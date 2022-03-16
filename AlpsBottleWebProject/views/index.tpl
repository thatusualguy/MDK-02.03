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