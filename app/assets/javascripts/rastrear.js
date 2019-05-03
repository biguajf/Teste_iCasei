
/* Cria um item "usuario" com valor "Thiago Belem" */
if(!window.sessionStorage.getItem('usuario')){
	window.sessionStorage.setItem('usuario', Math.floor(100*Math.random()));
}
/*  Função para rastrear comportamento do usuario */

$(document).ready(function() {
	// url clicada
	var _url  = location.pathname.replace("/","");
	if (_url == ''){
		_url = 'home';
	}
	// Data e hora atual
	var _date = moment(Date.now()).format('DD/MM/YYYY -  h:mm:ss a');
	// Usuario 
	var _user = window.sessionStorage.getItem('usuario');

	// Salva rastro de URL
	if(_url == 'home' || _url == 'sobre' || _url == 'contato'){
		$.ajax({
			data: { rastro: {
					url  : _url,
					date : _date,
					user : _user
				}
			},
			type: 'POST',
			url:'/rastrear'
		});
	}
});