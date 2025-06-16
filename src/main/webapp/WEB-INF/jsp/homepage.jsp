<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello!</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: linear-gradient to bottom right, #83a4d4, #ebf8e1; /* Soft gradient background */
            font-family: 'Montserrat', sans-serif;
            color: #333;
            overflow: hidden; /* Hide overflow from image animation */
        }

        .container {
            text-align: center;
            background-color: #ffffff;
            padding: 40px 60px;
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            position: relative;
            z-index: 1; /* Ensure container is above background elements */
            overflow: hidden; /* For potential internal animations */
            transition: transform 0.3s ease-in-out;
        }

        .container:hover {
            transform: translateY(-5px);
        }

        h1 {
            font-size: 4.5em; /* Larger font size for impact */
            margin-bottom: 20px;
            color: #4CAF50; /* A friendly green */
            letter-spacing: 2px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
            animation: fadeInScale 1s ease-out forwards; /* Fade in and scale effect */
        }

        .hello-image {
            width: 180px; /* Increased image size */
            height: 180px;
            border-radius: 50%; /* Make it round */
            object-fit: cover; /* Ensure image covers the area */
            margin-top: 30px;
            border: 6px solid #FFD700; /* Gold border for emphasis */
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
            animation: bounceIn 1.5s ease-out forwards; /* Bouncing entrance */
        }

        .subtitle {
            font-size: 1.2em;
            color: #666;
            margin-top: 25px;
            animation: slideInUp 1.2s ease-out forwards; /* Slide up effect */
        }

        /* Keyframe Animations */
        @keyframes fadeInScale {
            from {
                opacity: 0;
                transform: scale(0.8);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }

        @keyframes bounceIn {
            0% {
                opacity: 0;
                transform: scale(0.3) translateY(-100px);
            }
            60% {
                opacity: 1;
                transform: scale(1.1) translateY(10px);
            }
            80% {
                transform: scale(0.9) translateY(-5px);
            }
            100% {
                transform: scale(1) translateY(0);
            }
        }

        @keyframes slideInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Optional: Add some floating background elements for extra flair */
        .bubble {
            position: absolute;
            background-color: rgba(255, 255, 255, 0.5);
            border-radius: 50%;
            opacity: 0;
            animation: floatBubble 10s infinite ease-in-out;
            pointer-events: none; /* Allows clicks to pass through */
        }

        .bubble:nth-child(1) { width: 60px; height: 60px; left: 10%; top: 20%; animation-delay: 0s; }
        .bubble:nth-child(2) { width: 40px; height: 40px; left: 25%; top: 70%; animation-delay: 2s; }
        .bubble:nth-child(3) { width: 80px; height: 80px; left: 70%; top: 30%; animation-delay: 4s; }
        .bubble:nth-child(4) { width: 50px; height: 50px; left: 85%; top: 60%; animation-delay: 6s; }
        .bubble:nth-child(5) { width: 70px; height: 70px; left: 40%; top: 10%; animation-delay: 8s; }

        @keyframes floatBubble {
            0% { transform: translateY(0) translateX(0); opacity: 0; }
            50% { transform: translateY(-50px) translateX(20px); opacity: 0.8; }
            100% { transform: translateY(-100px) translateX(0); opacity: 0; }
        }

    </style>
</head>
<body>
    <div class="container">
        <h1>Hello!</h1>
        <img src="https://via.placeholder.com/180/83a4d4/FFFFFF?text=👋" alt="Waving Hand" class="hello-image">
        <p class="subtitle">Welcome to a little piece of the web.</p>
    </div>

    <div class="bubble"></div>
    <div class="bubble"></div>
    <div class="bubble"></div>
    <div class="bubble">${message}</div>
    <div class="bubble"><a href="${pageContext.request.contextPath}/greet">Greet Me</a></div>

</body>
</html>