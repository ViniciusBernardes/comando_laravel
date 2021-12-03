<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Response;

use App\Models\Rota;

class RotaAPIController extends Controller
{
    function rota1(Request $request)
    {
        try
        {
            $string = $request->str;

            $key = $this->generateRandomString();

            $data['hash'] = "0000".Hash("md5",$string.$key);
            $data['key'] = $key;

            $verifica = Rota::where("entrada", $string)->first();

            if (empty($verifica))
            {
                Rota::create([
                    "entrada"    => $string,
                    "hash"       => $data['hash'],
                    "chave"      => $data['key'],
                    "tentativas" => 1,
                ]);
                $data['attempts'] = 1;
            }
            else
            {
                $data['attempts'] = $verifica->tentativas + 1;
                Rota::where("bloco", $verifica->bloco)->update(['tentativas' => $data['attempts']]);
            }

            return Response::json($data, 200);
        } catch (\Exception $e) {
            return Response::json($e->getMessage(), 401);
        }

    }

    function generateRandomString($length = 8)
    {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++)
        {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }

    function consulta(Request $request)
    {
        $input = $request->only('filtro_tentativas');
        //dd($input);
        if (empty($input) || $input['filtro_tentativas'] == 0)
        {
            $dados = Rota::select('bloco', 'batch', 'entrada', 'chave')->paginate(10);
            $input['filtro_tentativas'] = 0;
        }
        else
            $dados = Rota::where('tentativas', '<', $input['filtro_tentativas'])->select('bloco', 'batch', 'entrada', 'chave')->paginate(10);

        $dados->appends(['filtro_tentativas' => $input['filtro_tentativas']]);
        return view("resultado")->with('dados', $dados)->with('filtro', $input['filtro_tentativas']);
    }
}
