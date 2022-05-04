const userController = require('../controllers/userController')

const verify =require('../verifyToken')
const router = require('express').Router()


router.post('/Register',userController.addUser)
router.post('/login',userController.loginuser)
router.get('/allUsers',verify,userController.getAllUsers)
router.get('/userads',verify,userController.userAds)
router.get('/userdetails',verify,userController.getOneUser)
router.put('/updateUser',verify,userController.updateUser)
router.delete('/:id',userController.deleteUser)




module.exports =router