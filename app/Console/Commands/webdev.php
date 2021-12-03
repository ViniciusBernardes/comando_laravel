<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use GuzzleHttp\Client;

class webdev extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'webdev:test {string} {--request=}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Consulta da rota';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle(Client $client)
    {
        try
        {
            $req = $this->option('request');
            $string = $this->argument('string');

            for($i = 0; $i < $req; $i++)
            {
                if($string != "")
                {
                    $res = $client->request('POST', 'http://127.0.0.1:8000/api/rota1', [
                        'form_params' => [
                            'str'     => $string,
                            'request' => $req,
                        ]
                    ]);
                }

                if ($res->getStatusCode() == 200)
                { // 200 OK
                    $response_data = $res->getBody()->getContents();
                    $obj = json_decode($response_data);
                    $string = $obj->hash;
                }
                else
                    $string = "";
            }

            return Command::SUCCESS;
        }
        catch (\Exception $e)
        {
            $this->error("Erro ".$e);
            return Command::SUCCESS;
        }
    }
}
