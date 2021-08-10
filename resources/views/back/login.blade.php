<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Admin Paneli - Giriş</title>
<link rel="stylesheet" href="{{asset('css')}}/admin_style.css" type="text/css" media="all"/>
</head>

<body>
<div id="login-form-area">
@if($errors->any())
<div class="alert alert-danger">
{{$errors->first()}}
</div>
@endif
 <form method="post" action="{{route('admin.login.post')}}">
 @csrf
 <div class="form-row"><input type="text" name="email" placeholder="E-posta adresiniz" class="form-input" required></div>
 <div class="form-row"><input type="password" name="password" placeholder="Şifreniz" class="form-input" required></div>
 <div class="form-row"><button type="submit" name="giris" class="form-btn">Oturum Aç</button></div>
 </form>
</div>
</body>
</html>