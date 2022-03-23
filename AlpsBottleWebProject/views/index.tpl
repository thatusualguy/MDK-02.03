% rebase('layout.tpl', title='Home Page', mountain_condition=mountain_condition, year=year)

<div class="row justify-content-center row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
    <!-- Шаблон карточки с отображения списка гор -->
    %for cond in mountain_condition:
    <div class="col">
        <div class="card">
            <img src="{{ cond.image_link }}" alt="{{ cond.name }}">
            <div class="card-body">
                <h5 class="card-title">{{ cond.name }}</h5>
                <p class="card-text">{{ cond.description }}</p>
                <a href="https://ru.wikipedia.org/wiki/{{ cond.name }}" class="btn btn-primary">Подробнее</a>
            </div>
        </div>
    </div>
    %end
</div>


<form action ="/home" method="post">
  <fieldset>
    <legend>Legend</legend>
    <div class="form-group">

      <label for="exampleInputEmail1" class="form-label mt-4">Email address</label>
      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    </div>
    <div class="form-group">
      <label for="exampleInputPassword1" class="form-label mt-4">Password</label>
      <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
    </div>
    <div class="form-group">
      <label for="exampleTextarea" class="form-label mt-4">Example textarea</label>
      <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
    </div>

    <div class="btn btn-primary">Submit</div>
</form>