const adController = require('../controllers/advertismentController.js')

const verify =require('../verifyToken')
const router = require('express').Router()
const upload = require('../imageupload')


router.post('/addAdvertisment',verify,upload.single("image"),adController.addAdvertisment)
router.get('/allAdvertisments',adController.getAllAdvertisments)
router.get('/:id' ,adController.getOneAdvertisment)
router.put('/:id',verify,upload.single("image"),adController.updateAdvertisment)
router.delete('/:id',verify,adController.deleteAdvertisment)




module.exports =router