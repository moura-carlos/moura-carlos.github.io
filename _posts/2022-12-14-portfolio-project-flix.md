---
title: "Portfolio Project: Flix"
categories:
  - Portfolio
  - Project
tags:
  #- Post Formats
  #- quote
  - Ruby on Rails
---

<nav>
  <ul>
    <li><a href="#role">Role</a></li>
    <li><a href="#goal">Project Goal</a></li>
    <li><a href="#solution">Solution</a></li>
    <li><a href="#skills">Skills</a></li>
    <li><a href="#proposal">Proposal</a></li>
    <li><a href="#youtube-video">YouTube video</a></li>
    <li><a href="#what-i-did">What I did</a></li>
    <li>
      <a href="hcodeps://github.com/moura-carlos/flix" target="_blank" style="text-decoration: none;">
      <i class="fab fa-fw fa-github"></i>
       GitHub Repository
    </a>
    </li>
    <li>
      <a href="hcodeps://whispering-headland-52759.herokuapp.com/" target="_blank" style="text-decoration: none;">
        <i class="fas fa-fw fa-link"></i>
       Website
      </a>
    </li>
  </ul>
</nav>

<h4 id="role">Role</h4>
<ul>
  <li>I was a Full-Stack Software Engineer in this project.
</li>
</ul>

<h4 id="goal">Project Goal</h4>
<ul>
  <li>The task was to create a movie review website in which users could leave their opinions about the movies listed.
</li>
</ul>

<h4 id="solution">Solution</h4>
<ul>
  <li>Some of the tasks to accomplish this goal were developing the website to display the movies, implementing an admin user role, making sure the admins could upload a cover image for the movies so that the users could see it, and then deploying the project to a server so that other people could access it using a URL.</li>
  <li>The abovementioned tasks had to be broken down into actionable steps.</li>
  <li>First, it was necessary to create an initial draft of the application by defining how it would behave.</li>
  <li>Using spreadsheets was a good alternative for doing that.</li>
  <li>In the spreadsheet, it was possible to define the user stories - which actions the customer would perform on the website - and the routes and resources that the application might need.</li>
  <li>It was also essential to work on the database design.</li>
  <li>For that, it was necessary to create a database schema with the probable tables and their acodeributes and think about the connections between them.</li>
  <li>Additionally, to keep track of changes in the code, it was necessary to create a Git repository and push the code up to GitHub.</li>
  <li>That was a way to guarantee that different versions of the code existed and could be used if anything went wrong.</li>
  <li>Moreover, Trello was used as a project dashboard to keep track of what needed to be done (had already been done and needed to be reviewed ).</li>
  <li>Additionally, instead of just showing all the movies to the user at once, it was necessary to give the users the option to narrow down the movies displayed by implementing some filters. These filters allowed the users, for example, to display the movies based on whether they had already been released and on their total gross - hits or flops.</li>
  <li>Moreover, it was critical to consider how the image upload storage would be handled.</li>
  <li>For this, it was convenient, reliable, and flexible to use Amazon AWS cloud services, more specifically using an S3 bucket for storing the images and then making use of them to display on the website.</li>
  <li>Finally, it was necessary to select a hosting platform for deployment to see the web application on the web. Heroku was used for deploying the application, and it also generated a web address that could be shared with other people so they could start reviewing the movies available on Flix.</li>
</ul>

<h4 id="skills">Skills</h4>
<ul>
  <li>RESTful API</li>
  <li>Git</li>
  <li>Ruby on Rails</li>
  <li>Heroku</li>
  <li>JavaScript</li>
  <li>CSS</li>
  <li>Ruby</li>
  <li>HTML</li>
  <li>Software Development</li>
  <li>Amazon AWS S3</li>
  <li>SQL</li>
</ul>

<h4 id="proposal">Proposal</h4>
<iframe src="/assets/pdfs/FlixProjectProposal.pdf" height="620" width="1120"></iframe>

<h4 id="youtube-video">YouTube video</h4>
<iframe width="560" height="315" src="https://www.youtube.com/embed/M2wuUde_IP0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
<h3 id="what-i-did">What I did</h3>

<div class="collapsibleListContainer">
<h4 onclick="toggleList('list0')">Controllers</h4>
  <ul id="list0" class="collapsibleList">
    <li>
      <div class="collapsibleListContainer">
        <h5 onclick="toggleList('list1')">ApplicationController</h5>
        <ul id="list1" class="collapsibleList">
          <li>Added flash message types (danger).</li>
          <li>Implemented authentication and authorization logic.</li>
          <li>Added methods for checking user authentication and authorization.</li>
          <li>Defined a private current_user method to retrieve the currently logged-in user.</li>
          <li>Defined a <code>require_sign_in</code> method to redirect unauthenticated users to the sign-in page.</li>
          <li>Created a <code>current_user?</code> method to check if the current user is the same as the user being edited or deleted.</li>
          <li>Defined a <code>require_admin</code> method to restrict access to administrative functions to users with administrative privileges.</li>
          <li>Added helper methods for accessing the <code>current_user</code> and checking if the user is an admin.</li>
        </ul>
    </div>
    <div class="collapsibleListContainer">
      <h5 onclick="toggleList('list2')">MoviesController</h5>
      <ul id="list2" class="collapsibleList">
        <li>Implemented authentication and administrative authorization by calling the <code>before_action</code> method to check whether users had the required permissions before performing any action on the page, except for the index and show actions.</li>
        <li>Implemented find movie functionality by calling the <code>find_movie</code> method, which retrieved the movie object based on the matching slug.</li>
        <li>Retrieved all movies by calling the <code>index</code> method and sent a filter criterion via the <code>movies_filter</code> method.</li>
        <li>Retrieved a specific movie and associated fans and genres by calling the <code>show</code> method and the corresponding <code>@movie</code> instance variable.</li>
        <li>Rendered a form for editing an existing movie object by calling the <code>edit</code> method.</li>
        <li>Updated an existing movie object by calling the <code>update</code> method and redirected to the updated object's show page or rendered the edit page if there was an error in updating.</li>
        <li>Created a new movie object by calling the <code>create</code> method and redirected to the new object's show page or rendered the new page if there was an error in creating.</li>
        <li>Destroyed a specific movie object by calling the <code>destroy</code> method and redirected to the index page or rendered the show page with an error message if there was an error in destroying.</li>
        <li>Encapsulated the private methods <code>movie_params</code>, <code>find_movie</code>, and <code>movies_filter</code> using the <code>private</code> keyword.</li>
        <li>Implemented the <code>movie_params</code> method to return a hash of permicodeed movie parameters for use in create and update methods.</li>
        <li>Implemented the <code>find_movie</code> method to find a movie by its slug.</li>
        <li>Implemented the <code>movies_filter</code> method to return the filter criterion based on the <code>params[:filter]</code> value, where the available filter criteria were upcoming, recent, hits, and flops, or released if the value was not one of the available criteria.</li>
      </ul>
    </div>
    <div class="collapsibleListContainer">
      <h5 onclick="toggleList('list3')">ReviewsController</h5>
      <ul id="list3" class="collapsibleList">
        <li>Implemented authentication by calling the <code>before_action</code> method to check whether users were signed in before performing any action on the page.</li>
        <li>Set the movie object based on the matching slug by calling the <code>set_movie</code> method using the <code>before_action</code> method.</li>
        <li>Retrieved all reviews of a specific movie by calling the <code>index</code> method and assigning the corresponding <code>@reviews</code> instance variable.</li>
        <li>Created a new review object associated with a specific movie by calling the <code>new</code> method and assigning the corresponding <code>@review</code> instance variable.</li>
        <li>Created a new review object associated with a specific movie, assigned the current user to the user acoderibute, and saved it by calling the <code>create</code> method and redirecting to the movie's review index page or rendering the new page with an error message if there was an error in creating.</li>
        <li>Retrieved and destroyed a specific review object associated with a specific movie if the user was the creator of the review by calling the <code>destroy</code> method and redirecting to the movie's review index page or rendering the index page with an error message if there was an error in destroying.</li>
        <li>Retrieved and updated a specific review object associated with a specific movie if the user was the creator of the review by calling the <code>update</code> method and redirecting to the movie's review index page or rendering the edit page with an error message if there was an error in updating.</li>
        <li>Encapsulated the <code>review_params</code> and <code>set_movie</code> methods using the <code>private</code> keyword.</li>
        <li>Implemented the <code>review_params</code> method to return a hash of permicodeed review parameters for use in create and update methods.</li>
        <li>Implemented the <code>set_movie</code> method to find a movie by its slug.</li>
      </ul>
    </div>
    <div class="collapsibleListContainer">
      <h5 onclick="toggleList('list4')">FavoritesController </h5>
      <ul id="list4" class="collapsibleList">
        <li>Implemented authentication by calling the <code>before_action</code> method to check whether users were signed in before performing any action on the page.</li>
        <li>Set the movie object based on the matching slug by calling the <code>set_movie</code> method using the <code>before_action</code> method.</li>
        <li>Created a favorite object associated with a specific movie and the current user by calling the <code>create</code> method on the <code>favorites</code> association of the <code>@movie</code> instance variable and redirecting to the movie's show page.</li>
        <li>Retrieved and destroyed a specific favorite object associated with a specific movie and the current user by calling the <code>destroy</code> method on the favorite object associated with the current user and the matching favorite ID and redirected to the movie's show page with an error message if there was an error in destroying.</li>
        <li>Encapsulated the <code>set_movie</code> method using the <code>private</code> keyword.</li>
        <li>Implemented the <code>set_movie</code> method to find a movie by its slug.</li>
      </ul>
    </div>
    <div class="collapsibleListContainer">
      <h5 onclick="toggleList('list5')">GenresController Controller</h5>
      <ul id="list5" class="collapsibleList">
        <li>Implemented authentication and authorization by calling the <code>before_action</code> method to check whether users were signed in and whether they have administrative privileges before performing any action on the page except index and show.</li>
        <li>Set the genre object based on the matching slug by calling the <code>set_genre</code> method using the <code>before_action</code> method except for index, new, and create.</li>
        <li>Retrieved only genres that have at least one movie associated with them by calling the <code>index</code> method, assigning the <code>@genre_ids</code> instance variable, and filtering the results based on the user's administrative status.</li>
        <li>Created a new genre object by calling the <code>new</code> method and assigning the corresponding <code>@genre</code> instance variable.</li>
        <li>Retrieved all movies associated with a specific genre by calling the <code>show</code> method and assigning the corresponding <code>@movies</code> instance variable.</li>
        <li>Created a new genre object and saved it by calling the <code>create</code> method, redirecting to the genres index page with a success message, or rendering the new page with an error message if there was an error in creating.</li>
        <li>Retrieved a specific genre object by calling the <code>edit</code> method.</li>
        <li>Updated a specific genre object and redirected to the genres index page with a success message, or rendered the edit page with an error message if there was an error in updating.</li>
        <li>Retrieved a specific genre object, destroyed it, and redirected to the genres index page with an alert message if there was no error in destroying or rendered the edit page with an error message if there was an error in destroying.</li>
        <li>Encapsulated the <code>set_genre</code> and <code>genre_params</code> methods using the <code>private</code> keyword.</li>
        <li>Implemented the <code>set_genre</code> method to find a genre by its slug.</li>
        <li>Implemented the <code>genre_params</code> method to return a hash of permicodeed genre parameters for use in create and update methods.</li>
      </ul>
    </div>
    <div class="collapsibleListContainer">
      <h5 onclick="toggleList('list6')">UsersController</h5>
      <ul id="list6" class="collapsibleList">
        <li>Implemented authentication by calling the <code>before_action</code> method to check whether users were signed in before performing any action except new and create.</li>
        <li>Set up an instance variable <code>@users</code> by calling the <code>index</code> method to retrieve all non-admin users.</li>
        <li>Retrieved a specific user by calling the <code>show</code> method, assigning the corresponding <code>@user</code> instance variable, and retrieving associated reviews and favorite movies.</li>
        <li>Created a new user object and saved it by calling the <code>create</code> method, redirecting to the user's show page with a success message and secodeing the user ID in the session, or rendering the new page with an error message if there was an error in creating.</li>
        <li>Retrieved a specific user object by calling the <code>edit</code> method and assigning the corresponding <code>@user</code> instance variable based on the before action method <code>require_correct_user</code>.</li>
        <li>Updated a specific user object by calling the <code>update</code> method, redirecting to the user's show page with a success message, or rendering the edit page with an error message if there was an error in updating.</li>
        <li>Destroyed a specific user object by calling the <code>destroy</code> method, destroying the user's session, redirecting to the movies index page with an alert message, or rendering the show page with an error message if there was an error in destroying.</li>
        <li>Encapsulated the <code>user_params</code> and <code>require_correct_user</code> methods using the <code>private</code> keyword.</li>
        <li>Implemented the <code>user_params</code> method to return a hash of permicodeed user parameters for use in create and update methods.</li>
        <li>Implemented the <code>require_correct_user</code> method to check whether the current user is the correct user for the action being performed and to redirect to the root URL if not.</li>
      </ul>
    </div>
    <div class="collapsibleListContainer">
      <h5 onclick="toggleList('list7')">SessionsController</h5>
      <ul id="list7" class="collapsibleList">
        <li>Defined a controller for handling user sessions</li>
        <li>Implemented <code>new</code> method to render a login form</li>
        <li>Implemented <code>create</code> method to handle form submission and authenticate the user</li>
        <li>Checked if the user exists and the provided password is correct</li>
        <li>Set the session with the user's ID and redirect to the intended URL or user's profile page</li>
        <li>Implemented <code>destroy</code> method to clear the session and sign out the user</li>
        <li>Redirected the user to the movies index page after signing out.</li>
      </ul>
    </div>
  </li>
  </ul>
  </div>

<div class="collapsibleListContainer">
  <h4 onclick="toggleList('list8')">Models</h4>
  <ul id="list8" class="collapsibleList">
    <li>
      <div class="collapsibleListContainer">
        <h5 onclick="toggleList('list9')">Movie Model</h5>
        <ul id="list9" class="collapsibleList">
          <li>Implemented <code>before_save</code> callback to set the slug for each movie before it is saved to the database</li>
          <li>Defined a <code>has_many</code> association between Movie and Review, ordering the reviews by descending order of their creation time</li>
          <li>Defined a <code>has_many</code> association between Movie and Favorite</li>
          <li>Defined a <code>has_many</code> association between Movie and Characterization</li>
          <li>Defined a <code>has_many</code> association between Movie and User, through the Favorite model</li>
          <li>Defined a <code>has_many</code> association between Movie and Genre, through the Characterization model</li>
          <li>Configured the Movie model to have one attached <code>main_image</code></li>
          <li>Defined constant <code>RATINGS</code> as an array of rating strings</li>
          <li>Validated the presence of <code>title</code>, <code>released_on</code>, and <code>duration</code> fields in Movie model</li>
          <li>Validated the uniqueness of <code>title</code> field in Movie model</li>
          <li>Validated the minimum length of the <code>description</code> field in Movie model</li>
          <li>Validated the numericality of the <code>total_gross</code> field in Movie model to be greater than or equal to zero</li>
          <li>Validated the inclusion of <code>rating</code> field in <code>RATINGS</code> array in Movie model</li>
          <li>Defined a custom validation method <code>acceptable_image</code> to validate the attached <code>main_image</code> file in Movie model</li>
          <li>Defined several scopes to retrieve different sets of movies from the database based on various criteria, such as <code>released</code>, <code>upcoming</code>, <code>recent</code>, <code>flops</code>, <code>hits</code>, <code>grossed_less_than</code>, and <code>grossed_greater_than</code></li>
          <li>Defined a method <code>flop?</code> to determine whether a movie is a flop or not based on its reviews and <code>total_gross</code> field</li>
          <li>Defined a method <code>average_stars</code> to calculate the average number of stars for reviews given to a movie</li>
          <li>Defined a method <code>average_stars_as_percent</code> to calculate the percentage of average stars for a movie</li>
          <li>Overrode the default value returned by the <code>to_param</code> method to use the <code>slug</code> field instead of the <code>id</code> field for generating URLs</li>
        </ul>
      </div>
      <div class="collapsibleListContainer">
        <h5 onclick="toggleList('list10')">Review Model</h5>
        <ul id="list10" class="collapsibleList">
          <li>Defined a <code>Review</code> Model.</li>
          <li>Established a <code>belongs_to</code> association between <code>Review</code> and <code>Movie</code>.</li>
          <li>Established a <code>belongs_to</code> association between <code>Review</code> and <code>User</code>.</li>
          <li>Defined a constant <code>STARS</code> which is an array of integers from 1 to 5.</li>
          <li>Defined validations for <code>comment</code> attribute to ensure it has a minimum length of 4 and for <code>stars</code> attribute to ensure it is within the range of <code>STARS</code> constant.</li>
          <li>Defined a scope named <code>past_n_days</code> that takes an argument <code>days</code> and returns reviews that were created within the past n days.</li>
          <li>Defined an instance method <code>stars_as_percent</code> that calculates and returns the percentage value of the <code>stars</code> attribute.</li>
        </ul>
      </div>
      <div class="collapsibleListContainer">
        <h5 onclick="toggleList('list11')">Genre Model</h5>
        <ul id="list11" class="collapsibleList">
          <li>Defined a <code>Genre</code> Model.</li>
          <li>Defined a <code>before_save</code> callback named <code>set_slug</code> that sets the <code>slug</code> attribute based on the <code>name</code> attribute.</li>
          <li>Defined validations for the <code>name</code> attribute to ensure it is present and unique.</li>
          <li>Established a one-to-many association between <code>Genre</code> and <code>Characterization</code> through <code>has_many</code> method with <code>dependent: :destroy</code> option which ensures associated <code>Characterization</code> records are deleted when a <code>Genre</code> record is deleted.</li>
          <li>Established a many-to-many association between <code>Genre</code> and <code>Movie</code> through <code>has_many</code> method with <code>through: :characterizations</code> option and commented out the <code>source: :movie</code> option.</li>
          <li>Defined an instance method <code>to_param</code> that returns the <code>slug</code> attribute when the object is passed to a URL helper method.</li>
        </ul>
      </div>
      <div class="collapsibleListContainer">
        <h5 onclick="toggleList('list12')">Characterization Model</h5>
        <ul id="list12" class="collapsibleList">
          <li>Defined a <code>Characterization</code> Model.</li>
          <li>Established a <code>belongs_to</code> association between <code>Characterization</code> and <code>Movie</code>.</li>
          <li>Established a <code>belongs_to</code> association between <code>Characterization</code> and <code>Genre</code>.</li>
          <li>Defined a class method named <code>get_genre_ids</code> that returns an array of genre ids that have at least one movie associated with them.</li>
          <li>Inside <code>get_genre_ids</code> method, the <code>distinct</code> method is called on the <code>select(:genre_id)</code> relation which selects only the <code>genre_id</code> column from the <code>characterizations</code> table and returns a distinct list of genre ids.</li>
          <li>Using <code>map</code> method, the list of genre ids is transformed into an array of integers and returned.</li>
        </ul>
      </div>
      <div class="collapsibleListContainer">
        <h5 onclick="toggleList('list13')">Favorite Model</h5>
        <ul id="list13" class="collapsibleList">
        <li>Defined a <code>Favorite</code> Model.</li>
        <li>Established a <code>belongs_to</code> association between <code>Favorite</code> and <code>Movie</code>.</li>
        <li>Established a <code>belongs_to</code> association between <code>Favorite</code> and <code>User</code>.</li>
        </ul>
      </div>
      <div class="collapsibleListContainer">
        <h5 onclick="toggleList('list14')">User Model</h5>
        <ul id="list14" class="collapsibleList">
          <li>Defined a <code>User</code> Model.</li>
          <li>Defined two <code>before_save</code> callbacks named <code>format_username</code> and <code>format_email</code> to convert <code>username</code> and <code>email</code> attributes to lowercase before saving.</li>
          <li>Defined a <code>has_secure_password</code> method to encrypt the <code>password</code> attribute and provide authentication functionality.</li>
          <li>Established a one-to-many association between <code>User</code> and <code>Review</code> through <code>has_many</code> method with <code>dependent: :destroy</code> option which ensures associated <code>Review</code> records are deleted when a <code>User</code> record is deleted.</li>
          <li>Established a one-to-many association between <code>User</code> and <code>Favorite</code> through <code>has_many</code> method with <code>dependent: :destroy</code> option which ensures associated <code>Favorite</code> records are deleted when a <code>User</code> record is deleted.</li>
          <li>Established a many-to-many association between <code>User</code> and <code>Movie</code> through <code>has_many</code> method with <code>through: :favorites</code> option and commented out the <code>source: :movie</code> option. This allows a user to favorite movies and retrieve their favorites using <code>favorite_movies</code> method.</li>
          <li>Defined validations for <code>name</code> attribute to ensure it is present, for <code>email</code> attribute to ensure it has a valid format and is unique (case-insensitive), for <code>password</code> attribute to ensure it has a minimum length of 10 characters (allowing blank password), and for <code>username</code> attribute to ensure it has only alphanumeric characters and is unique (case-insensitive).</li>
          <li>Defined an instance method <code>gravatar_id</code> that returns the MD5 hash of the lowercase email address, which is used to display the user's profile picture using the Gravatar service.</li>
          <li>Defined two named scopes named <code>by_name</code> and <code>not_admins</code> that return <code>User</code> objects sorted by name and not admins respectively.</li>
          <li>Defined an instance method <code>to_param</code> that returns the <code>username</code> attribute when the object is passed to a URL helper method.</li>
        </ul>
      </div>
    </li>
  </ul>
<div class="collapsibleListContainer">
  <h4 onclick="toggleList('list15')">Helpers</h4>
  <ul id="list15" class="collapsibleList">
    <li>
      <div class="collapsibleListContainer">
      <h5 onclick="toggleList('list16')">FavoritesHelper</h5>
      <ul id="list16" class="collapsibleList">
        <li>Defined a <code>FavoritesHelper</code> module to encapsulate view helper methods for the <code>Favorite</code> model.</li>
        <li>Defined a method named <code>fave_or_unfave_button</code> that takes a <code>favorite</code> object and a <code>movie</code> object as arguments and returns a button that allows a user to favorite or unfavorite a movie.</li>
        <li>If <code>favorite</code> object is present, the method generates a "Unfave" button using the <code>button_to</code> helper method and sets its HTTP method to <code>delete</code> to unfavorite the movie.</li>
        <li>If <code>favorite</code> object is not present, the method generates a "Fave" button using the <code>button_to</code> helper method and sets its HTTP method to <code>post</code> to favorite the movie. The <code>movie_favorites_path(movie)</code> is used to generate the path for the POST request.</li>
      </ul>
    </div>
    <div class="collapsibleListContainer">
      <h5 onclick="toggleList('list17')">MoviesHelper</h5>
      <ul id="list17" class="collapsibleList">
        <li>Defined a <code>MoviesHelper</code> module to encapsulate view helper methods for the <code>Movie</code> model.</li>
        <li>Defined a method named <code>total_gross</code> that takes a <code>movie</code> object as an argument and returns the total gross of the movie. If the movie is a flop, it returns "Flop!".</li>
        <li>Defined a method named <code>year_of</code> that takes a <code>movie</code> object as an argument and returns the year the movie was released.</li>
        <li>Defined a method named <code>fave_unfave</code> that takes a <code>movie</code> object and a <code>user</code> object as arguments and returns a button that allows a user to favorite or unfavorite the movie.</li>
        <li>If the user has already favorited the movie, the method displays an "Unfave" button, otherwise it displays a "Fave" button.</li>
        <li>Defined a method named <code>nav_link_to</code> that takes <code>text</code> and <code>url</code> as arguments and generates a link with an "active" class if the current page matches the <code>url</code> argument.</li>
        <li>Defined a method named <code>main_image</code> that takes a <code>movie</code> object as an argument and returns the movie's main image if it is attached, otherwise it returns a placeholder image.</li>
      </ul>
    </div>
    <div class="collapsibleListContainer">
      <h5 onclick="toggleList('list18')">UsersHelper</h5>
      <ul id="list18" class="collapsibleList">
        <li>Defined a <code>UsersHelper</code> module to encapsulate view helper methods for the <code>User</code> model.</li>
        <li>Defined a method named <code>profile_image</code> that takes a <code>user</code> object and an optional <code>size</code> argument as inputs and returns an HTML image tag with the user's profile image.</li>
        <li>Uses the <code>gravatar_id</code> method defined in the <code>User</code> model to generate a unique identifier for the user's Gravatar image.</li>
        <li>Uses the Gravatar API to construct a URL for the user's profile image with the specified size.</li>
        <li>Returns an HTML image tag using the generated URL and the user's name as the image's alt attribute.</li>
      </ul>
    </div>
    </li>
  </ul>
</div>
<div class="collapsibleListContainer">
  <h4 onclick="toggleList('list19')">Views</h4>
  <ul id="list19" class="collapsibleList">
    <li>
      <div class="collapsibleListContainer">
      <h5 onclick="toggleList('list20')">views/movies/_form.html.erb</h5>
      <ul id="list20" class="collapsibleList">
        <li>A partial view named <code>_form.html.erb</code> that allows a user to create or edit a <code>Movie</code> object.</li>
        <li>Uses the <code>form_with</code> helper method to generate a form that is bound to the <code>movie</code> object.</li>
        <li>Renders a partial named <code>shared/errors</code> to display any validation errors associated with the <code>movie</code> object.</li>
        <li>Generates form fields for the <code>title</code>, <code>description</code>, <code>rating</code>, <code>genre_ids</code>, <code>total_gross</code>, <code>director</code>, <code>duration</code>, <code>main_image</code>, and <code>released_on</code> attributes of the <code>movie</code> object.</li>
        <li>Uses the <code>collection_check_boxes</code> helper method to generate a checkbox for each available <code>Genre</code> object that allows the user to select the genres associated with the movie.</li>
        <li>Generates a submit button for the form.</li>
      </ul>
    </div>
    <div class="collapsibleListContainer">
      <h5 onclick="toggleList('list21')">views/movies/edit.html.erb</h5>
      <ul id="list21" class="collapsibleList">
        <li>A view named <code>edit.html.erb</code> that allows a user to edit a <code>Movie</code> object.</li>
        <li>Displays the title of the movie being edited in a heading.</li>
        <li>Renders the partial <code>_form.html.erb</code> to display the form fields for the <code>Movie</code> object.</li>
        <li>Sets the <code>movie</code> object to the instance variable <code>@movie</code>, which is set in the controller.</li>
        <li>The <code>_form.html.erb</code> partial is passed the <code>movie</code> object through the local variable <code>movie: @movie</code>.</li>
      </ul>
    </div>
    <div class="collapsibleListContainer">
      <h5 onclick="toggleList('list22')">views/movies/index.html.erb</h5>
      <ul id="list22" class="collapsibleList">
        <li>A view named <code>index.html.erb</code> that displays a list of <code>Movie</code> objects.</li>
        <li>Iterates through each <code>Movie</code> object in the <code>@movies</code> instance variable.</li>
        <li>Displays a section element for each movie, with the movie's title, image, total gross, average stars, description, and year of release.</li>
        <li>Uses the <code>main_image</code>, <code>total_gross</code>, <code>year_of</code>, and <code>average_stars_as_percent</code> helper methods to format and display the movie data.</li>
        <li>Displays an "Add New Movie" button for administrators using the <code>current_user_admin?</code> helper method.</li>
      </ul>
    </div>
    <div class="collapsibleListContainer">
      <h5 onclick="toggleList('list23')">views/movies/new.html.erb</h5>
      <ul id="list23" class="collapsibleList">
        <li>A view named <code>new.html.erb</code> that allows a user to create a new <code>Movie</code> object.</li>
        <li>Displays a heading to indicate that a new movie is being created.</li>
        <li>Renders the partial <code>_form.html.erb</code> to display the form fields for the <code>Movie</code> object.</li>
        <li>Sets the <code>movie</code> object to the instance variable <code>@movie</code>, which is set in the controller.</li>
        <li>The <code>_form.html.erb</code> partial is passed the <code>movie</code> object through the local variable <code>movie: @movie</code>.</li>
      </ul>
    </div>
    <div class="collapsibleListContainer">
      <h5 onclick="toggleList('list24')">views/movies/show.html.erb</h5>
      <ul id="list24" class="collapsibleList">
        <li>The file contains the HTML and ERB code for rendering a single movie's details page.</li>
        <li>The <code>@movie</code> instance variable is used to display the movie's title, image, rating, description, director, duration, total gross, and release year.</li>
        <li>The <code>main_image</code> helper method is used to display the movie's main image.</li>
        <li>The <code>fave_or_unfave_button</code> helper method is used to display a button for favoriting or unfaving the movie.</li>
        <li>The <code>total_gross</code> helper method is used to display the movie's total gross revenue in currency format.</li>
        <li>The <code>year_of</code> helper method is used to display the year of the movie's release.</li>
        <li>The <code>profile_image</code> helper method is used to display a user's profile image.</li>
        <li>The page also includes a form for creating a new review for the movie.</li>
        <li>If the current user is an admin, links for editing or deleting the movie are displayed.</li>
        <li>The page includes a list of fans and genres related to the movie.</li>
      </ul>
    </div>
    <div class="collapsibleListContainer">
      <h5 onclick="toggleList('list25')">views/reviews/_form.html.erb</h5>
      <ul id="list25" class="collapsibleList">
        <li>The file contains the HTML and ERB code for rendering a form to create a new review for a movie.</li>
        <li>The form is created with the <code>form_with</code> helper method, which takes the movie and review models as arguments.</li>
        <li>The form includes fields for selecting a star rating and entering a comment for the review.</li>
        <li>The <code>Review::STARS</code> constant is used to generate radio buttons for each possible star rating.</li>
        <li>The form also includes a submit button to post the review.</li>
      </ul>
    </div>
    <div class="collapsibleListContainer">
      <h5 onclick="toggleList('list26')">views/reviews/edit.html.erb</h5>
      <ul id="list26" class="collapsibleList">
        <li>
        The file includes the <code>reviews/form</code> partial for rendering a form for editing a movie review.
        </li>
        <li>
          The <code>@movie</code> and <code>@review</code> instance variables are passed to the partial as local variables.
        </li>
      </ul>
    </div>
    <div class="collapsibleListContainer">
    <h5 onclick="toggleList('list27')">views/reviews/index.html.erb</h5>
    <ul id="list27" class="collapsibleList">
      <li>The file contains the HTML and ERB code for rendering a list of reviews for a movie.</li>
        <li>The <code>@movie</code> instance variable is used to display the movie's title in the page heading.</li>
        <li>The <code>@reviews</code> instance variable is used to iterate over all the reviews for the movie and display them in a list.</li>
        <li>The <code>stars_as_percent</code> method is used to display the star rating for each review as a percentage.</li>
        <li>The <code>profile_image</code> helper method is used to display the profile image of the user who wrote the review.</li>
        <li>The <code>time_ago_in_words</code> helper method is used to display the time elapsed since the review was created.</li>
        <li>The page includes links to edit or delete a review, but only if the current user is the author of the review.</li>
    </ul>
  </div>
  <div class="collapsibleListContainer">
    <h5 onclick="toggleList('list28')">views/reviews/new.html.erb</h5>
    <ul id="list28" class="collapsibleList">
      <li>The file contains the HTML and ERB code for rendering a form to create a new review for a movie.</li>
      <li>The <code>@movie</code> instance variable is used to display the movie's title in the page heading.</li>
      <li>The <code>reviews/form</code> partial is rendered to display the form for creating a new review.</li>
      <li>The <code>movie</code> and <code>review</code> instance variables are passed to the partial as local variables.</li>
    </ul>
  </div>
  <div class="collapsibleListContainer">
    <h5 onclick="toggleList('list29')">views/users/_form.html.erb</h5>
    <ul id="list29" class="collapsibleList">
    <li>The file contains the HTML and ERB code for rendering a form for creating or editing a user's account.</li>
    <li>The form_with helper method is used to create the form, with the user model as the model object.</li>
    <li>The form includes fields for the user's name, username, email, password, and password confirmation.</li>
    <li>The render "shared/errors" partial is used to display error messages related to the user model.</li>
    <li>The submit button label is changed depending on whether the user is a new record or not.</li>
    </ul>
  </div>
  <div class="collapsibleListContainer">
    <h5 onclick="toggleList('list30')">views/users/edit.html.erb</h5>
    <ul id="list30" class="collapsibleList">
  <li>The file contains the HTML and ERB code for rendering a form to edit a user account.</li>
  <li>The page heading displays the text "Edit Account".</li>
  <li>The form is rendered using the "form" partial with the @user instance variable passed in as a local variable.</li>
    </ul>
  </div>
  <div class="collapsibleListContainer">
    <h5 onclick="toggleList('list31')">views/users/index.html.erb</h5>
    <ul id="list31" class="collapsibleList">
  <li>The file contains the HTML and ERB code for rendering a list of users.</li>
  <li>The @users instance variable is used to iterate over all the users and display their names and creation dates in a list.</li>
  <li>The pluralize helper method is used to display the number of users in the page heading.</li>
  <li>The link_to helper method is used to link each user's name to their profile page.</li>
  <li>The time_ago_in_words helper method is used to display the time elapsed since each user was created.</li>
    </ul>
  </div>
  <div class="collapsibleListContainer">
    <h5 onclick="toggleList('list32')">views/users/new.html.erb</h5>
    <ul id="list32" class="collapsibleList">
      <li>The file contains the HTML and ERB code for rendering a form to create a new user account.</li>
      <li>The form is rendered using the "form" partial, passing the user instance variable as a local variable.</li>
      <li>The form includes fields for entering the user's name, username, email, password, and password confirmation.</li>
      <li>The autofocus attribute is set to true for the name field, making it the default field for entering data.</li>
      <li>The submit button text changes depending on whether the user is a new record or not.</li>
    </ul>
  </div>
  <div class="collapsibleListContainer">
    <h5 onclick="toggleList('list33')">views/users/show.html.erb</h5>
    <ul id="list33" class="collapsibleList">
      <li>The file contains the HTML and ERB code for rendering a user's profile page.</li>
      <li>The profile_image helper method is used to display the user's profile image.</li>
      <li>The mail_to helper method is used to display the user's email as a link.</li>
      <li>The page displays the user's name, username, and date of membership.</li>
      <li>If the current user is viewing their own profile, links are displayed to edit or delete the account.</li>
      <li>If the user has written any reviews, they are displayed with details about the movie, star rating, and comment.</li>
      <li>If the user has any favorite movies, they are displayed with a link to the main image of the movie.</li>
    </ul>
  </div>
  <div class="collapsibleListContainer">
    <h5 onclick="toggleList('list34')">views/genres/_form.html.erb</h5>
    <ul id="list34" class="collapsibleList">
      <li>Created a form using the <code>form_with</code> helper that maps to the <code>genre</code> model.</li>
      <li>Rendered a partial <code>shared/errors</code> to show errors if there are any.</li>
      <li>Added a label "name" and a text field to enter the name of the genre using f.label and f.text_field respectively.</li>
      <li>Added a submit button using f.submit.</li>
      <li>Added a "Delete Genre" button that sends a DELETE request to the genre_path with the genre object and confirms the action using data: { turbo_method: :delete, turbo_confirm: "Are you sure?"}.</li>
      <li>Set the class and style attributes of the "Delete Genre" button using class: "btn btn-danger btn-md", style: "display: block; margin-top: 2rem; width: 100% !important;".</li>
      <li>Conditionally rendered the "Delete Genre" button only if the genre id is present.</li>
      <li>Created a div element with a margin-top using inline CSS.</li>
    </ul>
  </div>
  <div class="collapsibleListContainer">
    <h5 onclick="toggleList('list35')">views/genres/edit.html.erb</h5>
    <ul id="list35" class="collapsibleList">
      <li>Ran the <code>render</code> method with the partial file path "genres/form" and passed in a local variable named <code>genre</code> with a value of <code>@genre</code>.</li>
      <li>Expected the <code>render</code> method to render the partial file "genres/_form.html.erb" with the local variable <code>genre</code> accessible within the partial file.</li>
    </ul>
  </div>
  <div class="collapsibleListContainer">
  <h5 onclick="toggleList('list36')">views/genres/index.html.erb</h5>
  <ul id="list36" class="collapsibleList">
    <li>Checked if there are any genres present in <code>@genres</code> using <code>if @genres.present?</code>.</li>
    <li>If there are genres present, displayed a <code>&lt;h1&gt;</code> header "List of Genres".</li>
    <li>Created an unordered list <code>&lt;ul&gt;</code> to display the genres using <code>&lt;% @genres.each do |genre| %&gt;</code>.</li>
    <li>Checked if the current user is an admin using the <code>current_user_admin?</code> method.</li>
    <li>If the user is an admin, checked if the current genre's ID is included in <code>@genre_ids</code>.</li>
    <li>If the current genre's ID is not included in <code>@genre_ids</code>, displayed the genre's name as a link with the text "NO MOVIE" using <code>&lt;%= link_to genre.name, genre %&gt; [NO MOVIE]</code>.</li>
    <li>If the current genre's ID is included in <code>@genre_ids</code>, displayed the genre's name as a link to its <code>show</code> page using <code>&lt;%= link_to genre.name, genre %&gt;</code>.</li>
    <li>If the user is not an admin, displayed the genre's name as a link to its <code>show</code> page using <code>&lt;%= link_to genre.name, genre %&gt;</code>.</li>
    <li>Closed the <code>&lt;ul&gt;</code> unordered list using <code>&lt;/ul&gt;</code>.</li>
  </ul>
</div>
<div class="collapsibleListContainer">
  <h5 onclick="toggleList('list37')">views/genres/new.html.erb</h5>
  <ul id="list37" class="collapsibleList">
    <li>Created a new genre feature using Ruby on Rails</li>
    <li>Added an HTML heading and paragraph to provide context for the user</li>
    <li>Inserted a link to the list of existing genres using the <%= link_to %> helper</li>
    <li>Rendered a partial file called "form" using the <%= render %> helper to display a form for creating a new genre</li>
    <li>Passed a local variable called "genre" to the partial file using the syntax "genre: @genre"</li>
  </ul>
</div>
<div class="collapsibleListContainer">
  <h5 onclick="toggleList('list38')">views/genres/show.html.erb</h5>
  <ul id="list38" class="collapsibleList">
    <li>Checked if the @movies variable is present, and if it is:</li>
    <ul>
      <li>Displayed the genre name as a level 2 heading using <%= @genre.name %></li>
      <li>Displayed an unordered list using &lt;ul&gt;</li>
      <li>Iterated over each movie using @movies.each do |movie|</li>
      <ul>
        <li>Displayed the movie title as a link using <%= link_to movie.title, movie %></li>
      </ul>
      <li>Closed the unordered list using &lt;/ul&gt;</li>
    </ul>
    <li>Checked if the current user is an admin, and if they are:</li>
    <ul>
      <li>Displayed a "New Genre" link using <%= link_to "New Genre", new_genre_path, class: "btn btn-success btn-sm" %></li>
      <li>Displayed an "Edit Genre" link using <%= link_to "Edit Genre", edit_genre_path(@genre), class: "btn btn-success btn-sm" %></li>
    </ul>
  </ul>
</div>
  <div class="collapsibleListContainer">
    <h5 onclick="toggleList('list39')">views/sessions/new.html.erb</h5>
    <ul id="list39" class="collapsibleList">
      <ul>
        <li>Created a sign-in form with Ruby on Rails</li>
        <li>Added a link to the sign-up page</li>
        <li>Used form_with helper to create a form that posts to the session_path</li>
        <li>Added a label and input field for the user's email or username</li>
        <li>Added a label and input field for the user's password</li>
        <li>Added a submit button for the form</li>
      </ul>
    </ul>
  </div>
    <div class="collapsibleListContainer">
    <h5 onclick="toggleList('list40')">views/shared/_errors.html.erb</h5>
    <ul id="list40" class="collapsibleList">
      <ul>
        <li>Checked if there are any errors with the <code>object.errors.any?</code> method</li>
        <li>If there are errors, displayed an error section with a title using <code>&lt;section&gt;</code> and <code>&lt;h2&gt;</code> tags</li>
        <li>Displayed a sub-title indicating the number of errors using <code>&lt;h3&gt;</code> tag and <code>pluralize</code> method</li>
        <li>Displayed the list of error messages using <code>&lt;ul&gt;</code> and <code>&lt;li&gt;</code> tags in a loop with <code>object.errors.full_messages.each</code> method</li>
      </ul>
    </ul>
  </div>
    <div class="collapsibleListContainer">
    <h5 onclick="toggleList('list40')">views/layouts/_flash.html.erb</h5>
    <ul id="list40" class="collapsibleList">
      <ul>
      <li>Iterated over the flash hash using the <code>flash.each</code> method.</li>
      <li>For each key-value pair, created a <code>div</code> element with the value as its content and the class "flash #{type}".</li>
      <li>Wrapped the div element in a <code>content_tag</code> helper method, which generates HTML tags with specified options.</li>
      <li>Returned the generated HTML code.</li>
      </ul>
    </ul>
  </div>
      <div class="collapsibleListContainer">
    <h5 onclick="toggleList('list41')">views/layouts/_footer.html.erb</h5>
    <ul id="list41" class="collapsibleList">
      <ul>
        <li>Created a footer section using HTML to display copyright information and a link to the company website.</li>
        <li>Used embedded Ruby (<code>ERB</code>) to dynamically update the current year in the copyright notice.</li>
        <li>Styled the footer using CSS to ensure it is displayed at the bottom of the page and has a consistent appearance across the website.</li>
      </ul>
    </ul>
  </div>
      <div class="collapsibleListContainer">
    <h5 onclick="toggleList('list42')">views/layouts/_header.html.erb</h5>
    <ul id="list42" class="collapsibleList">
      <ul>
        <li>Added a header section to the web page using the <code>&lt;header&gt;</code> tag.</li>
        <li>Created a navigation menu using the <code>&lt;nav&gt;</code> tag.</li>
        <li>Inserted the Flix logo using the <code>&lt;%= image_tag("logo.png", alt: "Flix Logo") %&gt;</code> helper method.</li>
        <li>Added a link to the root path using the <code>&lt;%= link_to ... %&gt;</code> helper method.</li>
        <li>Added a list of navigation links using the <code>&lt;ul&gt;</code> tag.</li>
        <li>Used the <code>&lt;%= nav_link_to ... %&gt;</code> helper method to add links to "Released", "Genres", "Upcoming movies", "Recent movies", "Hit movies", and "Flop movies".</li>
        <li>Added a conditional statement to display the "Movies by genre" link if the user is an admin.</li>
        <li>Added a user section to the right of the navigation menu using another <code>&lt;ul&gt;</code> tag.</li>
        <li>Added a conditional statement to display different links depending on whether the user is signed in or not.</li>
        <li>Used the <code>&lt;%= link_to ... %&gt;</code> helper method to add links to the user's profile, account settings, sign in, and sign up pages.</li>
        <li>Added a "Sign Out" button using the <code>&lt;%= link_to ... %&gt;</code> helper method and the <code>&lt;data&gt;</code> attribute with the <code>turbo_method: :delete</code> option.</li>
      </ul>
    </ul>
  </div>
    <div class="collapsibleListContainer">
    <h5 onclick="toggleList('list43')">views/layouts/application.html.erb</h5>
    <ul id="list43" class="collapsibleList">
      <ul>
        <li>Rendered the application's header, flash messages, and main content using the <code>render</code> method and appropriate view partials.</li>
      </ul>
    </ul>
  </div>
    </li>
  </ul>
  <div class="collapsibleListContainer">
    <h4 onclick="toggleList('list44')">Config</h4>
    <ul id="list44" class="collapsibleList">
      <div class="collapsibleListContainer">
      <h5 onclick="toggleList('list45')">config/storage.yml</h5>
      <ul id="list45" class="collapsibleList">
        <ul>
          <li>added amazon aws s3 information to use it with production environment</li>
        </ul>
      </ul>
    </div>
    <div class="collapsibleListContainer">
      <h5 onclick="toggleList('list46')">config/environments/production.rb</h5>
      <ul id="list46" class="collapsibleList">
        <ul>
          <li>defined amazon aws s3 as the service to be used by active storage in the production environment</li>
        </ul>
      </ul>
    </div>
    </ul>
  </div>
</div>

<script>
// scripts.js
function toggleList(listId) {
  const list = document.getElementById(listId);
  list.style.display = list.style.display === 'block' ? 'none' : 'block';
}
</script>
<style>
  /* styles.css */
.collapsibleListContainer h5 {
  cursor: pointer;
}
.collapsibleList {
  list-style-type: none;
  padding-left: 0;
  display: none;
}
</style>
