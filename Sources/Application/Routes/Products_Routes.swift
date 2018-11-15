import Kitura
import KituraContracts

func initializeProducts_Routes(app: App) {
    // Raw routes with handler closures are declared below:
    //
    app.router.get("/products") { request, response, next in
        response.send(json: [:])
        next()
    }

    app.router.post("/products") { request, response, next in
        response.send(json: [:])
        next()
    }

    app.router.get("/products/:id") { request, response, next in
        response.send(json: [:])
        next()
    }

    app.router.put("/products/:id") { request, response, next in
        response.send(json: [:])
        next()
    }

    app.router.delete("/products/:id") { request, response, next in
        response.send(json: [:])
        next()
    }
}
