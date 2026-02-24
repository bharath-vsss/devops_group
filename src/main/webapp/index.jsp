<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sample Webs App</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        body {
            margin: 0;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #ffffff;
        }

        .container {
            background: rgba(255, 255, 255, 0.1);
            padding: 45px 55px;
            border-radius: 14px;
            text-align: center;
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.35);
            max-width: 600px;
            backdrop-filter: blur(8px);
        }

        h1 {
            margin-bottom: 12px;
            font-size: 2.6rem;
            letter-spacing: 1px;
        }

        p {
            font-size: 1.1rem;
            line-height: 1.7;
            margin-bottom: 25px;
            opacity: 0.95;
        }

        .info {
            background: rgba(0, 0, 0, 0.25);
            padding: 22px;
            border-radius: 10px;
            text-align: left;
        }

        .info p {
            margin: 8px 0;
            font-size: 1rem;
        }

        .info strong {
            color: #fbc531;
        }

        footer {
            margin-top: 25px;
            font-size: 0.9rem;
            opacity: 0.85;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Sample Web Application</h1>

    <p>
        A clean and simple Java-based web application deployed on
        <strong>Apache Tomcat</strong> and built using <strong>Maven</strong>.
    </p>

    <div class="info">
        <p><strong>Application Type:</strong> Java Web Application</p>
        <p><strong>Build Tool:</strong> Maven</p>
        <p><strong>Java Version:</strong> JDK 17</p>
        <p><strong>Server:</strong> Apache Tomcat</p>
        <p><strong>Packaging:</strong> WAR</p>
    </div>

    <footer>
        © 2026 Sample Web App | DevOps Practice Project | 24 feb 2026
    </footer>
</div>

</body>
</html>
