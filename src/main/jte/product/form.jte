@import com.bfz.demo_jte.entity.Product
@import java.util.Map
@import java.util.Objects

@param Product product
@param Map<String, String> validationErrors


@template.layout.main(content = @`
    <div class="row">
        <div class="col col-md-6">
            @if(Objects.nonNull(product.getId()))
                <h2>Edit product</h2>
            @else
                <h2>Create new product</h2>
            @endif
        </div>
    </div>
    <div class="row">
        <div class="col col-md-6">
            <form action="/products/save" method="post" class="needs-validation">
                <input type="hidden" name="id" value="${product.getId()}"/>
                <div class="mb-3">
                    <label for="name" class="form-label">Name</label>
                    <input type="text" name="name" id="name" class="form-control" value="${product.getName()}"/>
                    @if(Objects.nonNull(validationErrors) && validationErrors.containsKey("name"))
                        <div class="mt-2 text-danger">${validationErrors.get("name")}</div>
                    @endif
                </div>
                <div class="mb-3">
                    <label for="price" class="form-label">Price</label>
                    <input type="number" name="price" id="price" class="form-control" step="0.01" value="${product.getPrice()}"/>
                    @if(Objects.nonNull(validationErrors) && validationErrors.containsKey("price"))
                        <div class="mt-2 text-danger">${validationErrors.get("price")}</div>
                    @endif
                </div>
                <button type="submit" class="btn btn-primary">Save</button>
            </form>
        </div>
    </div>
`)