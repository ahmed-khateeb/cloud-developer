import { Router, Request, Response } from "express";
import { filterImageFromURL, deleteLocalFiles } from "../../../../util/util";
import Joi from "@hapi/joi";
import Jimp from "jimp";

const router: Router = Router();

// GET /filteredimage?image_url={{URL}}
// endpoint to filter an image from a public url.
// IT SHOULD
//    1
//    1. validate the image_url query
//    2. call filterImageFromURL(image_url) to filter the image
//    3. send the resulting file in the response
//    4. deletes any files on the server on finish of the response
// QUERY PARAMATERS
//    image_url: URL of a publicly accessible image
// RETURNS
//   the filtered image file [!!TIP res.sendFile(filteredpath); might be useful]
/**************************************************************************** */

router.get("/filteredimage", async (req: Request, res: Response) => {
  let { image_url }: {image_url: string} = req.query
  //Validating the image_Url
  if(!image_url || image_url.trim() == "") {
    return res.status(422).send({message: "Please Enter Valid Image Url"})
  }
  try{
    //Calling the filterImageFromURL(image_url) to filter the image
    let imageFile = await filterImageFromURL(image_url)
    //Send the resulting file in the response
    await res.status(200).sendFile(imageFile, async ()=> {
      //Deletes any files on the server on finish of the response
      await deleteLocalFiles([imageFile])
    })
  }
  catch(error) {
    return res.status(422).send({message: "It Seems the url you entered isn't for an image"})
  }
});

export const ImageRouter: Router = router;
