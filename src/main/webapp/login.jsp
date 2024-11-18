<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            max-width: 500px;
            background-color: white;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }

        h1 {
            font-size: 2rem;
            font-weight: 600;
            color: #343a40;
            margin-bottom: 30px;
            text-align: center;
        }

        .form-label {
            font-weight: 600;
            color: #495057;
        }

        .form-control {
            padding: 10px;
            font-size: 1rem;
            border-radius: 8px;
            border: 1px solid #ced4da;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
            padding: 10px 20px;
            font-weight: 600;
            border-radius: 8px;
            width: 100%;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #004085;
        }

        .mb-3 {
            margin-bottom: 20px;
        }

        .footer {
            margin-top: 40px;
            font-size: 0.9rem;
            text-align: center;
            color: #6c757d;
        }

        .small-text {
            font-size: 0.875rem;
        }

    </style>
</head>

<body>

    <section class="container my-5 p-4 rounded border border-secondary shadow">
        <h1>Login</h1>

        <form action="login" method="POST" class="mb-3">

            <div class="mb-3">
                <label for="phone" class="form-label">Phone</label>
                <input type="text" class="form-control" id="phone" name="phone" required>
            </div>

            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>

            <button type="submit" class="btn btn-primary">Login</button>
        </form>

        <p class="text-center small-text">Don't have an account? <a href="register">Register Here</a></p>
    </section>

    <footer class="footer">
        <p>&copy; 2024 Trigonometry Calculator</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz4fnFO9gybpy60kStJ9gfkX8gYcP94k70jWvE5o+J9mNWjHlDg5edT1vH" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-pzjw8f+ua7Kw1TIq0v8FqFy9Bv3f1t2t5TJOj/gI4bU1t7fFkR3QhZy5WfM5nkA6" crossorigin="anonymous"></script>

</body>

</html>
