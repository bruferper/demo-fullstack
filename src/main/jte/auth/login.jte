@param String errorMessage

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="/bootstrap.min.css">
        <title>Login</title>
    </head>
    <body class="bg-body-secondary">
        <div class="container">
            <div class="row mt-5 d-flex justify-content-center">
                <div class="col-4">
                    <div class="row text-center">
                        <div class="col"><h2>Demo App</h2></div>
                    </div>
                    <div class="row mt-3">
                        <div class="col">
                            <div class="card shadow-sm">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col">
                                            <form action="/auth/login" method="post">
                                                <div class="mb-3">
                                                    <label for="username" class="form-label">Username</label>
                                                    <input type="text" name="username" id="username" class="form-control"/>
                                                </div>
                                                <div class="mb-3">
                                                    <label for="password" class="form-label">Password</label>
                                                    <input type="password" name="password" id="password" class="form-control"/>
                                                </div>
                                                <div class="d-grid gap-2">
                                                    <button type="submit" class="btn btn-primary">Login</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    @if(!errorMessage.isEmpty())
                                        <div class="row mt-3 text-center">
                                            <div class="col">
                                                <div class="alert alert-danger" role="alert">
                                                    ${errorMessage}
                                                </div>
                                            </div>
                                        </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col">
                            <div class="alert alert-info" role="alert">
                                <span class="d-block mb-2">There are two available users</span>
                                <ul class="mb-0">
                                    <li>Administrator: admin / 1234</li>
                                    <li>User: user / 1234</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>