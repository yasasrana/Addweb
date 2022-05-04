module.exports =(sequelize,DataTypes) =>{

    const User = sequelize.define("user",{
         username:{
             type: DataTypes.STRING,
             allowNull:false
         },
         name:{
            type: DataTypes.STRING,
             allowNull:false
         },
         password:{
            type: DataTypes.STRING,
             allowNull:false
         },
         gender:{
         type: DataTypes.STRING
         },
         location:{
            type: DataTypes.STRING
         },
        phonenum:{
        type: DataTypes.STRING
        },
        image:{
            type: DataTypes.STRING
            }
        
    })

    return User
}