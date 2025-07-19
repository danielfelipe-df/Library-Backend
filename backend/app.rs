
use actix_web::{get, App, HttpServer,  HttpResponse, Responder};

#[get("/")]
async fn index() -> impl Responder {
	HttpResponse::Ok().body("Hi from LibraryServer!\n")
}

#[tokio::main]
async fn main() -> std::io::Result<()> {
	HttpServer::new(|| App::new().service(index))
		.bind("127.0.0.1:9802")?
		.run()
		.await
}
