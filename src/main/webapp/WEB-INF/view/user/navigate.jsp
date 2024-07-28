<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<nav class="navbar">
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/api/gymMemberships/view">Gym Memberships</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/trainers/view">Trainers</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/packages/view">Packages</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/api/sessions/view">Sessions</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/register">Register</a>
        </li>
    </ul>
    <div class="menu-toggle" id="mobile-menu">
        <i class="fas fa-bars"></i>
    </div>
</nav>

<style>
    .navbar {
        background-color: #333;
        overflow: hidden;
        display: flex;
        flex-direction: column;
        align-items: center;
        font-family: 'Playfair Display', sans-serif;
    }

    .navbar-nav {
        list-style-type: none;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: row;
        justify-content: center;
        width: 100%;
    }

    .nav-item {
        flex: 1;
        text-align: center;
    }

    .nav-link {
        display: block;
        color: white;
        text-align: center;
        padding: 14px 20px;
        text-decoration: none;
    }

    .nav-link:hover {
        background-color: #ddd;
        color: black;
    }

    .menu-toggle {
        display: none;
        cursor: pointer;
    }

    @media (max-width: 768px) {
        .navbar-nav {
            flex-direction: column;
            display: none;
            width: 100%;
        }

        .nav-item {
            width: 100%;
        }

        .menu-toggle {
            display: block;
            color: white;
            padding: 14px 20px;
        }

        .navbar-nav.active {
            display: flex;
        }
    }
</style>
<link
    href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@100..400&display=swap"
    rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha384-KyZXEAg3QhqLMpG8r+Knujsl5/SC/7d6ixUd4J/gj2qvXen5nD1/U+KtrsnMpoX4" crossorigin="anonymous"></script>
<script>
    $(document).ready(function() {
        $("#mobile-menu").click(function() {
            $(".navbar-nav").toggleClass("active");
        });
    });
</script>

<!-- FontAwesome for the menu icon -->
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
