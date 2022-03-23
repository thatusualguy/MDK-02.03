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


<form action ="/meow" method="post">
  <fieldset>
    <legend>Asking questions!</legend>
    <div class="form-group">
      <label for="exampleInputEmail1" class="form-label mt-4">Email address</label>
      <input type="email" class="form-control" id="exampleInputEmail1" name="ADDRESS" aria-describedby="emailHelp" placeholder="Enter email" required>
      <small id="emailHelp" class="form-text text-muted">Мы никогда не опубликуем ваш Email где-либо!.</small>
    </div>
    <br>
    <div class="form-group">
      <label for="exampleTextarea" class="form-label mt-4">Example textarea</label>
      <textarea class="form-control" id="exampleTextarea" name="QUESTION" rows="3" required></textarea>
    </div>
    <br>
    <button type="submit" value="Send" class="btn btn-primary">Submit</button>
</form>