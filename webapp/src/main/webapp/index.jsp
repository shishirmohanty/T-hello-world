<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Welcome to ShishirTech</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background: linear-gradient(135deg, #e0f7fa, #ffffff);
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      text-align: center;
      padding-top: 80px;
    }

    .welcome {
      animation: fadeIn 2s ease-in-out;
    }

    .logo {
      width: 150px;
      border-radius: 50%;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(-20px); }
      to { opacity: 1; transform: translateY(0); }
    }

    .quiz-box {
      margin-top: 40px;
      padding: 20px;
      background-color: #fefefe;
      border-radius: 10px;
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
      display: inline-block;
    }
  </style>
</head>
<body>

  <!-- Logo -->
  <img src="https://media.giphy.com/media/QBd2kLB5qDmysEXre9/giphy.gif" class="logo mb-4" alt="Company Logo" />

  <!-- Welcome Message -->
  <h1 class="welcome text-primary fw-bold">Hello, Welcome Shishir Mohanty !!!</h1>

  <!-- Quiz Section -->
  <div class="quiz-box">
    <h4 class="text-success">Quick Math Challenge</h4>
    <p>What is <span id="num1"></span> + <span id="num2"></span> ?</p>
    <input type="number" id="userAnswer" class="form-control w-50 mx-auto" />
    <br>
    <button onclick="checkAnswer()" class="btn btn-primary">Check</button>
    <p id="result" class="mt-3 fw-bold"></p>
  </div>

  <script>
    // Generate two random numbers
    const num1 = Math.floor(Math.random() * 10);
    const num2 = Math.floor(Math.random() * 10);
    document.getElementById("num1").textContent = num1;
    document.getElementById("num2").textContent = num2;

    function checkAnswer() {
      const userAnswer = parseInt(document.getElementById("userAnswer").value);
      const result = document.getElementById("result");
      if (userAnswer === num1 + num2) {
        result.textContent = "✅ Correct!";
        result.style.color = "green";
      } else {
        result.textContent = "❌ Try again!";
        result.style.color = "red";
      }
    }
  </script>

</body>
</html>
