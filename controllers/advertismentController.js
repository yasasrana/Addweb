
const db= require('../models')


//create main model
const User = db.users
const Advertisment =db.advertisments



//create advertisment

const addAdvertisment = async (req,res) =>{

   try{ 
     let info ={
    topic:req.body.topic,
    category:req.body.category,
    price:req.body.price,
    city:req.body.city,
    image:req.file.path,
    description:req.body.description,
    user_id: req.user.Uid   
}

const advertisment = await Advertisment.create(info)
res.status(200).send(advertisment)
 console.log(req.file);
}
catch(e){
  res.status(500).send(error.message);
}   

    
  
}


//get all advertisments

const getAllAdvertisments = async (req,res,next)=> {
   
  try { 

    let{page,size} =req.query;
    if(!page){
      page=1;
    }
    if(!size){
      size=5;
    }
    const limit =parseInt(size);
    const offset =(page-1)*size;
    const advertisments = await Advertisment.findAll({limit,offset});
    
 
 res.status(200).send({page,size, data:advertisments})

    
  } catch (error) {
    res.status(500).send(error.message);
    
  }
  

}


// get single advertisement

const getOneAdvertisment = async (req,res) =>{

try{let id = req.params.id
  let advertisment = await Advertisment.findOne({ where:{id:id}})
  res.status(200).send(advertisment)
}catch(error){
  res.status(500).send(error.message)
}
  
 
}


// get update advertisement

const updateAdvertisment = async (req,res) =>{

 try{
   let info ={
  topic:req.body.topic,
  category:req.body.category,
  price:req.body.price,
  city:req.body.city,
  image:req.file.path,
  description:req.body.description,
  user_id: req.user.Uid   
}

  let id = req.params.id
  
  const advertisment = await Advertisment.update( info, { where:{ id:id}})
  res.status(200).send('advertisment updated successful')
  }
  catch(error){
  res.status(500).send(error.message)
  } 
   
  }

  // get delete advertisement by id

const deleteAdvertisment = async (req,res) =>{


    let id = req.params.id
    
    await Advertisment.destroy({ where:  {id:id}})
    res.status(200).send('advertisment deleted !')
   
  }

  function paginationResults(model){
    return(req,res,next) => {
      const page =parseInt(req.query.page)
      const limit =parseInt(req.query.limit)

      const startIndex =(page-1) *limit
      const endIndex =page*limit

      const results ={}

      if(endIndex <model.length){
        results.next ={
          page:page +1,
          limit:limit
        }
      }

      results.results =model.slice(startIndex,endIndex)

      res.paginationResults =results
      next()
    }
  }

  module.exports ={
      addAdvertisment,
      getAllAdvertisments,
      getOneAdvertisment,
      updateAdvertisment,
      deleteAdvertisment
  }