<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Adventure</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            width: 100%;
            overflow: hidden;
            font-family: 'Arial', sans-serif;
        }

        .background {
            position: relative;
            height: 100%;
            width: 100%;
            background: linear-gradient(to bottom, #87CEEB 0%, #E0F7FA 100%);
            overflow: hidden;
        }

        .snow-hill {
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 30%;
            background: white;
            border-radius: 50% 50% 0 0;
            box-shadow: 0 -10px 20px rgba(255, 255, 255, 0.8);
        }

        .snow-hill:before {
            content: '';
            position: absolute;
            bottom: 0;
            left: -20%;
            width: 140%;
            height: 100%;
            background: white;
            border-radius: 50% 50% 0 0;
        }

        .eagle {
            position: absolute;
            top: 30%;
            left: -100px;
            width: 100px;
            height: 60px;
            background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 60"><path d="M10,30 Q30,5 50,30 Q70,55 90,30" stroke="%23333" stroke-width="3" fill="none"/><path d="M50,30 L30,10 M50,30 L30,50" stroke="%23333" stroke-width="3"/></svg>');
            background-repeat: no-repeat;
            animation: fly 15s linear infinite;
        }

        @keyframes fly {
            0% { transform: translateX(-100px) translateY(0) rotate(0deg); }
            20% { transform: translateX(20vw) translateY(-20px) rotate(5deg); }
            40% { transform: translateX(40vw) translateY(10px) rotate(-3deg); }
            60% { transform: translateX(60vw) translateY(-15px) rotate(4deg); }
            80% { transform: translateX(80vw) translateY(5px) rotate(-2deg); }
            100% { transform: translateX(100vw) translateY(0) rotate(0deg); }
        }

        .content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            color: #333;
            z-index: 10;
            text-shadow: 0 0 10px rgba(255, 255, 255, 0.8);
        }

        h1 {
            font-size: 3em;
            margin-bottom: 20px;
            color: #2c3e50;
        }

        p {
            font-size: 1.2em;
            margin-bottom: 30px;
            max-width: 600px;
            line-height: 1.6;
        }

        .get-started {
            display: inline-block;
            padding: 15px 30px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 30px;
            font-size: 1.2em;
            transition: all 0.3s ease;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }

        .get-started:hover {
            background-color: #2980b9;
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
        }

        .snowflake {
            position: absolute;
            background-color: white;
            border-radius: 50%;
            pointer-events: none;
            opacity: 0.8;
            animation: fall linear infinite;
        }

        @keyframes fall {
            to { transform: translateY(100vh); }
        }
    </style>
</head>
<body>
    <div class="background">
        <div class="eagle"></div>
        <div class="snow-hill"></div>

        <div class="content">
            <h1>Welcome to the Adventure</h1>
            <p>Soar to new heights with us, like the eagle crossing majestic snowy peaks. Discover breathtaking experiences that will leave you in awe of nature's beauty.</p>
            <a href="${pageContext.request.contextPath}/greet" class="get-started">Get Started</a>
        </div>
    </div>

    <script>
        // Create snowflakes
        function createSnowflakes() {
            const snowflakesCount = 50;
            for (let i = 0; i < snowflakesCount; i++) {
                const snowflake = document.createElement('div');
                snowflake.classList.add('snowflake');

                // Random size between 2px and 6px
                const size = Math.random() * 4 + 2;
                snowflake.style.width = `${size}px`;
                snowflake.style.height = `${size}px`;

                // Random position
                snowflake.style.left = `${Math.random() * 100}vw`;
                snowflake.style.top = `${Math.random() * -100}px`;

                // Random animation duration between 5s and 15s
                const duration = Math.random() * 10 + 5;
                snowflake.style.animationDuration = `${duration}s`;

                // Random delay
                snowflake.style.animationDelay = `${Math.random() * 5}s`;

                document.querySelector('.background').appendChild(snowflake);
            }
        }

        // Initialize when page loads
        window.onload = function() {
            createSnowflakes();
        };
    </script>
</body>
</html>