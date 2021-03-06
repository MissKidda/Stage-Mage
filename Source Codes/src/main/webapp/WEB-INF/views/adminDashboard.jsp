<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>
<!--
	Striped by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title><c:out value="${user.fullName}"/> Profile</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/styles/main.css" />
		<link rel="stylesheet" href="/styles/font-awesome.min.css"/>
		<link rel='stylesheet' href="https://fonts.googleapis.com/css?family=Open+Sans">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>
	<body class="is-preload">

		<!-- Content -->
		

			<div id="content">
				<div class="inner">
				<article class="box post post-excerpt">
							<header>
								<!--
									Note: Titles and subtitles will wrap automatically when necessary, so don't worry
									if they get too long. You can also remove the <p> entirely if you don't
									need a subtitle.
								-->
								<h2>My Profile</h2>
							</header>
							<div class="info">
								<!--
									Note: The date should be formatted exactly as it's shown below. In particular, the
									"least significant" characters of the month should be encapsulated in a <span>
									element to denote what gets dropped in 1200px mode (eg. the "uary" in "January").
									Oh, and if you don't need a date for a particular page or post you can simply delete
									the entire "date" element.

								-->
								<span>My Info</span>
								<!--
									Note: You can change the number of list items in "stats" to whatever you want.
								-->
								
							</div>
						
							<a href="#" class="image featured"><img src="/images/avatarImg.png" alt="avatar" /></a>
							<p>
								<i class="icon fa-pencil"></i>
								<strong>User Name:</strong><c:out value="${user.nickName}"/></p>
							<p>
							<i class="icon fa-home"></i>
							<strong>Location</strong> <c:out value="${user.location}"/>
							</p>
								
						</article>
<article class="box post post-excerpt">
							<header>
								<!--
									Note: Titles and subtitles will wrap automatically when necessary, so don't worry
									if they get too long. You can also remove the <p> entirely if you don't
									need a subtitle.
								-->
								<h2>My Theatres</h2>
							
								<p>Theatres I have Subscribed To</p>
								
									
							</header>
							<div class="info">
								<!--
									Note: The date should be formatted exactly as it's shown below. In particular, the
									"least significant" characters of the month should be encapsulated in a <span>
									element to denote what gets dropped in 1200px mode (eg. the "uary" in "January").
									Oh, and if you don't need a date for a particular page or post you can simply delete
									the entire "date" element.

								-->
								<span>THP</span>
								<!--
									Note: You can change the number of list items in "stats" to whatever you want.
								-->
								
							</div>
							<h2><a href="/http://talkinghorseproductions.org">TALKING HORSE PRODUCTIONS</a>  </h2>
							<a href="/http://talkinghorseproductions.org" class="image featured"><img src="/images/thplouie.png" alt="" /></a>
							<p>

								<strong>About:</strong>  <strong>THP</strong>is a not-for-profit theatre 
								company that produces intimate, high-quality theatre in downtown Columbia, in the North Village Arts District</p>
							<p>
								<strong>Awards</strong>
								Ed Hanson, the former Artistic Director of THP, was voted the Silver Award in the 2017 Inside Columbia magazine's 
								"Best Theatrical Performer" category. Find out more about THP at <a href="http://talkinghorseproductions.org">Talking Horse Productions</a> 
								
							</p>
						</article>
						<h2>My Events</h2>
					<!-- Post -->
					<c:forEach var="myEvents" items="${loggedInUser.subscriptions}"><ul>
					<li>
						<article class="box post post-excerpt">
							<header>
								<!--
									Note: Titles and subtitles will wrap automatically when necessary, so don't worry
									if they get too long. You can also remove the <p> entirely if you don't
									need a subtitle.
								-->
								
								
								<h2><c:out value="${newEvent.eventName}"></c:out></h2>
							</header>
							<div class="info">
								<!--
									Note: The date should be formatted exactly as it's shown below. In particular, the
									"least significant" characters of the month should be encapsulated in a <span>
									element to denote what gets dropped in 1200px mode (eg. the "uary" in "January").
									Oh, and if you don't need a date for a particular page or post you can simply delete
									the entire "date" element.

								-->
								<span>Event</span>
								<!--
									Note: You can change the number of list items in "stats" to whatever you want.
								-->
								
							</div>
							<a href="#" class="image featured"><img src="${newEvent.eventImages}" alt="" /></a>
							<p>
						<a href="/eventsPage" >
						${myEvents}
						</a>
							</p>
							<a href="subscribe?id=${newEvent.eventID}" class="button next">Subscribe</a>
						</article>
						</li>
</ul></c:forEach>
					
					<!-- Pagination -->
						

				</div>
			</div>

		<!-- Sidebar -->
			<div id="sidebar">

				<!-- Logo -->
					<h1 id="logo"><a href="#">STAGE-MAGE</a></h1>

				<!-- Nav -->
					<nav id="nav">
						<ul>
							<li ><a href="/">HOME</a></li>
							<li ><a href="/eventsHome">EVENTS</a></li>
							<li><a href="registerUser">REGISTER</a></li>
							<li class="current" ><a href="/userhome">MY PROFILE</a></li>
							<li><a href="/login">LOGIN</a></li>
							<li><a href="/logout">LOGOUT</a></li>
						</ul>
					</nav>

				<!-- Search -->
					<section class="box search">
						<form method="post" action="#">
							<input type="text" class="text" name="search" placeholder="Search" />
						</form>
					</section>

				<!-- Text -->
					<section class="box text-style1">
						<div class="inner">
							<p>
							<strong><a href="/">STAGE-MAGE</a></strong>An event planning application.
							</p>
						</div>
					</section>

				<!-- Recent Posts -->
					<section class="box recent-posts">
						<header>
							<h2>Upcoming Events</h2>
						</header>
						 <c:forEach var="newEvents" items="${events}">
						 <ul>
						<li>
						<c:out value="${newEvent.eventName }"/>
						</li>
						</ul></c:forEach>
					</section>


				<!-- Calendar -->
					<section class="box calendar">
						<div class="inner">
							<table>
								<caption>July 2014</caption>
								<thead>
									<tr>
										<th scope="col" title="Monday">M</th>
										<th scope="col" title="Tuesday">T</th>
										<th scope="col" title="Wednesday">W</th>
										<th scope="col" title="Thursday">T</th>
										<th scope="col" title="Friday">F</th>
										<th scope="col" title="Saturday">S</th>
										<th scope="col" title="Sunday">S</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td colspan="4" class="pad"><span>&nbsp;</span></td>
										<td><span>1</span></td>
										<td><span>2</span></td>
										<td><span>3</span></td>
									</tr>
									<tr>
										<td><span>4</span></td>
										<td><span>5</span></td>
										<td><span>6</span></td>
										<td><span>7</span></td>
										<td><span>8</span></td>
										<td><span>9</span></td>
										<td><span>10</span></td>
									</tr>
									<tr>
										<td><span>11</span></td>
										<td><span>12</span></td>
										<td><span>13</span></td>
										<td ><span>14</span></td>
										<td><span>15</span></td>
										<td><span>16</span></td>
										<td><span>17</span></td>
									</tr>
									<tr>
										<td><span>18</span></td>
										<td><span>19</span></td>
										<td><span>20</span></td>
										<td><span>21</span></td>
										<td><span>22</span></td>
										<td><span>23</span></td>
										<td><span>24</span></td>
									</tr>
									<tr>
										<td><a href="#">25</a></td>
										<td><span>26</span></td>
										<td><span>27</span></td>
										<td class="today" ><span>28</span></td>
										<td class="pad" colspan="3"><span>&nbsp;</span></td>
									</tr>
								</tbody>
							</table>
						</div>
					</section>

				<!-- Copyright -->
					<ul id="copyright">
						<li>&copy; Stage_Mage</li>
					</ul>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>