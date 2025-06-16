<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Our Page!</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            overflow: hidden; /* Prevent scrollbars due to full-screen elements */
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh; /* Ensure it covers the entire viewport height */
            background: linear-gradient(135deg, #a8c0ff, #3f2b96); /* Elegant gradient background */
            color: #fff;
            text-align: center;
            position: relative;
        }

        .background-image-left,
        .background-image-right {
            position: absolute;
            top: 0;
            width: 50%;
            height: 100%;
            background-size: cover;
            background-position: center;
            opacity: 0.6; /* Slightly transparent */
            z-index: 0; /* Behind the content */
            animation: panBackground 20s linear infinite alternate; /* Smooth panning effect */
        }

        .background-image-left {
            left: 0;
            background-image: url('https://images.unsplash.com/photo-1542435503-956c469947f6?fit=crop&w=800&q=80'); /* Replace with your image URL */
            animation-delay: 0s;
        }

        .background-image-right {
            right: 0;
            background-image: url('https://images.unsplash.com/photo-1517487881594-2787fef5ee43?fit=crop&w=800&q=80'); /* Replace with your image URL */
            animation-delay: 10s; /* Start second image pan later */
        }

        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.4); /* Dark overlay for text readability */
            z-index: 1;
        }

        .content {
            position: relative;
            z-index: 2; /* Above overlay and background images */
            padding: 40px;
            max-width: 900px;
            background-color: rgba(255, 255, 255, 0.1); /* Slightly transparent white box for content */
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(8px); /* Frosted glass effect */
            animation: fadeIn 1.5s ease-out forwards;
        }

        h1 {
            font-size: 4em;
            margin-bottom: 20px;
            letter-spacing: 3px;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.5);
        }

        p {
            font-size: 1.4em;
            line-height: 1.6;
            margin-bottom: 30px;
        }

        .gif-container {
            margin-top: 30px;
            margin-bottom: 40px; /* Space below GIF */
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .welcome-gif {
            max-width: 250px; /* Adjust GIF size as needed */
            height: auto;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            animation: zoomIn 1.2s ease-out forwards;
        }

        .cta-button {
            display: inline-block;
            padding: 15px 30px;
            background-color: #007bff; /* Bright blue button */
            color: #fff;
            text-decoration: none;
            border-radius: 50px;
            font-size: 1.2em;
            font-weight: bold;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .cta-button:hover {
            background-color: #0056b3;
            transform: translateY(-3px);
        }

        /* Animations */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes zoomIn {
            from { opacity: 0; transform: scale(0.5); }
            to { opacity: 1; transform: scale(1); }
        }

        @keyframes panBackground {
            0% { background-position: 0% center; }
            100% { background-position: 100% center; }
        }
    </style>
</head>
<body>
    <div class="background-image-left"></div>
    <div class="background-image-right"></div>

    <div class="overlay"></div>

    <div class="content">
        <h1>Welcome Aboard!</h1>
        <p>We're thrilled to have you here. Explore our world and discover something amazing.</p>

        <div class="gif-container">
            <img src="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExd2JpZ2Jvc3h6YWZmbW11NjVncmMxaWw2b2E2eTM3N3Rrb29jZDR5NiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/l0MYGb2KjLhUqW7UQ/giphy.gif" alt="Welcome GIF" class="welcome-gif">
        </div>

        <a href="#" class="cta-button"><a href="${pageContext.request.contextPath}/greet">Get Started</a></a>
    </div>

</body>
</html>