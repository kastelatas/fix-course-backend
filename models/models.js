const sequelize = require('../db')
const {DataTypes} = require('sequelize')

const User = sequelize.define('user', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    email:{type: DataTypes.STRING, unique: true},
    password:{type: DataTypes.STRING},
    role:{type: DataTypes.STRING, defaultValue: "USER"},
})

const Post = sequelize.define('post', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    title:{type: DataTypes.STRING},
    content:{type: DataTypes.STRING},
})

const Course = sequelize.define('course', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    title:{type: DataTypes.STRING},
    banner :{type: DataTypes.STRING},
    description :{type: DataTypes.STRING},
    plan_course :{type: DataTypes.STRING},
})

const Course_Category = sequelize.define('course_category', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    course_id: {type: DataTypes.INTEGER}
})

const Purchased_courses = sequelize.define('purchased_courses', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    course_id: {type: DataTypes.INTEGER},
    user_id: {type: DataTypes.INTEGER}
})

const Media = sequelize.define('media', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    name: {type: DataTypes.STRING},
})


//
// User.hasMany(Post)
// Post.belongsTo(User)

User.hasMany(Purchased_courses)
Purchased_courses.belongsTo(User)

Course.hasMany(Course_Category)
Course_Category.belongsTo(Course)

Course.hasMany(Media)
Media.belongsTo(Course)

module.exports = {
    User,
    Purchased_courses,
    Post,
    Course,
    Course_Category,
    Media
}