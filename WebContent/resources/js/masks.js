$('#telefone').mask('(00) 00000-0000');

$("input[name='tipoDocumento']").change(function(){
    var campo = $(this).val();
    if (campo == 'cpf'){	
      $('#cnpjCpfLabel').text('CPF');
      $('#cnpjCpf').val('');
      $('#cnpjCpf').mask('999.999.999-99');
      
    }
    else {
      $('#cnpjCpfLabel').text('CNPJ');
      $('#cnpjCpf').val('');
      $('#cnpjCpf').mask('99.999.999/9999-99');
    }			
});