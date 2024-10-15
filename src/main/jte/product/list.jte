@import java.util.List
@import com.bfz.demo_jte.entity.Product

@param List<Product> products
@param boolean isAdmin

@template.layout.main(content = @`
    <div class="row">
        <div class="col col-md-6">
            <h2>Products</h2>
        </div>
        <div class="col col-md-6 d-flex justify-content-end">
            @if (isAdmin)
                <a href="/products/create" class="btn btn-primary align-self-center">Create New Product</a>
            @endif
        </div>
    </div>
    <div class="row">
        <div class="col">
            @if(products.isEmpty())
                <div class="alert alert-info mt-3" role="alert">
                    There are no products yet!
                </div>
            @else
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Price</th>
                        @if (isAdmin)
                            <th>Actions</th>
                        @endif
                    </tr>
                    </thead>
                    <tbody>
                    @for (Product product : products)
                        <tr>
                            <td>${product.getId()}</td>
                            <td>${product.getName()}</td>
                            <td>${product.getPrice()}</td>
                            @if (isAdmin)
                                <td>
                                    <a href="/products/edit/${product.getId()}" class="btn btn-sm btn-primary">Edit</a>
                                    <a href="/products/delete/${product.getId()}" class="btn btn-sm btn-danger">Delete</a>
                                </td>
                            @endif
                        </tr>
                    @endfor
                    </tbody>
                </table>
            @endif
        </div>
    </div>
`)