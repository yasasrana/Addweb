require('dotenv').config()
const express = require('express')
const cors = require('cors')
const req = require('express/lib/request')
const res = require('express/lib/response')
const jwt = require('jsonwebtoken')



const app= express()

var corOptions ={
      origin : 'https://localhost:8000'
}



//middleware
app.use(cors(corOptions))

app.use(express.json())

app.use(express.urlencoded({extended :true}))

app.use('/images', express.static('images'))


//routers

const router =require('./routes/advertismentRouter')
app.use('/api/advertisments',router)

const router1 =require('./routes/UserRouter')
app.use('/api/users',router1)






//tetsing api

/* const posts =[
    {
        username :'yasas',
        title :'post 1'
    },
    {
        username :'kasun',
        title :'post 2'
    }
]



app.get('/posts',authenticateToken,(req,res)=>{
  res.json(posts.filter(post => post.username === req.user.name))


})

app.post('/login',(req,res)=>{

    const username =req.body.username
    const user={ name:username}

    const accessToken =jwt.sign(user, process.env.ACCESS_TOKEN_SECRET)
    res.json({ accessToken: accessToken})

})

//json authentication function

function authenticateToken(req,res,next){
   
   const authHeader =req.headers['authorization']
   const token =authHeader && authHeader.split(' ')[1]
    if(token ==null) return res.sendStatus(401)

    jwt.verify(token,process.env.ACCESS_TOKEN_SECRET, (err,user)=>{
        if(err) return res.sendStatus(403)
        req.user =user 
        next()
    })

}

 */

//port

const PORT = process.env.PORT ||8000

//server

app.listen(PORT,() =>{
    console.log(`server is runing port ${PORT}`)
})