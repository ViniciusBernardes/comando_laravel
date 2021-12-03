<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


<div class="well" style="margin:50px 50px 0px 50px">
    <div>
        Filtro de tentativas
        <form action="{!! url('/consulta') !!}" method="get" style="margin-top: 10px;">
            <select name="filtro_tentativas" onchange="this.form.submit()">
                <option @if ($filtro == 0) selected @endif value="0">Selecione...</option>
                <option @if ($filtro == 5) selected @endif value="5">Menos que 5 Tentativas</option>
                <option @if ($filtro == 10) selected @endif value="10">Menos que 10 Tentativas</option>
                <option @if ($filtro == 20) selected @endif value="20">Menos que 20 Tentativas</option>
                <option @if ($filtro == 30) selected @endif value="30">Menos que 30 Tentativas</option>
                <option @if ($filtro == 40) selected @endif value="40">Menos que 40 Tentativas</option>
                <option @if ($filtro == 50) selected @endif value="50">Menos que 50 Tentativas</option>
                <option @if ($filtro == 100) selected @endif value="100">Menos que 100 Tentativas</option>
            </select>
        </form>
    </div>
    <table class="table">
      <thead>
        <tr>
          <th>Bloco</th>
          <th>Batch</th>
          <th>Entrada</th>
          <th>Chave</th>
        </tr>
      </thead>
      <tbody>
          @foreach ($dados as $ret)
         <tr>
          <td>{{ $ret->bloco }}</td>
          <td>{{ date('d/m/Y H:m:s', strtotime($ret->batch));}}</td>
          <td>{{ $ret->entrada }}</td>
          <td>{{ $ret->chave }}</td>
         </tr>
         @endforeach
      </tbody>
    </table>
</div>
<div class="pagination" style="margin-left:50px ">
    {!! $dados->links() !!}
</div>
<div class="modal small hide fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">Delete Confirmation</h3>
    </div>
    <div class="modal-body">
        <p class="error-text">Are you sure you want to delete the user?</p>
    </div>
    <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
        <button class="btn btn-danger" data-dismiss="modal">Delete</button>
    </div>
</div>
