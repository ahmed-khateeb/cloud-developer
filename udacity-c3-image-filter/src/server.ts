import { Request, Response } from 'express';
import express from 'express';
import bodyParser from 'body-parser';
import { IndexRouter } from './controllers/v0/index.router';

(async () => {

  // Init the Express application
  const app = express();

  // Set the network port
  const port = process.env.PORT || 8080;
  
  // Use the body parser middleware for post requests
  app.use(bodyParser.json());

  //CORS Should be restricted
  app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", process.env.URL);
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Authorization");
    next();
  });
  
  // Root URI call
  app.get("/", async (req, res) => {
    res.status(200).json({
      status: "OK",
      message: "try GET /api/v0/"
    });
  });

  app.use('/api/v0/', IndexRouter)

  // Start the Server
  app.listen( port, () => {
      console.log( `server running http://localhost:${ port }` );
      console.log( `press CTRL+C to stop server` );
  } );
})();