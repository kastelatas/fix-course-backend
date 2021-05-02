const sequelize = require('../db')
const {DataTypes} = require('sequelize')

const User = sequelize.define('user', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    email: {type: DataTypes.STRING, unique: true},
    password: {type: DataTypes.STRING},
    role: {type: DataTypes.STRING, defaultValue: "USER"},
})

const Post = sequelize.define('post', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    title: {type: DataTypes.STRING},
    content: {type: DataTypes.STRING},
})

const Course = sequelize.define('course', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    title: {type: DataTypes.STRING},
    banner: {type: DataTypes.STRING},
    description: {type: DataTypes.STRING},
})

const Course_Category = sequelize.define('course_category', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    name: {type: DataTypes.STRING}
})


const Subject = sequelize.define('subject', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    title: {type: DataTypes.STRING},
    description: {type: DataTypes.STRING},
})

const Purchased_courses = sequelize.define('purchased_courses', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    course_id: {type: DataTypes.INTEGER},
})

const Media = sequelize.define('media', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    name: {type: DataTypes.STRING},
})

const Course_to_Category = sequelize.define('сourse_to_сategory', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
})

const Lesson = sequelize.define('lesson', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    title: {type: DataTypes.STRING},
    description: {type: DataTypes.STRING},
})

const Lesson_video = sequelize.define('lesson_video', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    path: {type: DataTypes.STRING},
})

const Homework = sequelize.define('homework', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    work: {type: DataTypes.STRING},
})

const User_to_Homework = sequelize.define('user_to_homework', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
})

const Archive  = sequelize.define('archive', {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    path: {type: DataTypes.STRING},
})


User.hasMany(Post)
Post.belongsTo(User)

User.hasMany(Course)
Course.belongsTo(User)

User.hasMany(Purchased_courses)
Purchased_courses.belongsTo(User)

User.belongsToMany(Homework,{through: User_to_Homework})
User.belongsToMany(Archive,{through: User_to_Homework})
Homework.belongsToMany(User,{through: User_to_Homework})

Course.belongsToMany(Course_Category,{through: Course_to_Category})
Course_Category.belongsToMany(Course,{through: Course_to_Category})

Course.hasMany(Subject)
Subject.belongsTo(Course)

Subject.hasMany(Lesson)
Lesson.belongsTo(Subject)

Lesson_video.hasOne(Lesson)
Lesson.belongsTo(Lesson_video)

Homework.hasOne(Lesson)
Lesson.belongsTo(Homework)

module.exports = {
    User,
    Purchased_courses,
    Post,
    Course,
    Course_Category,
    Media,
    Lesson_video,
    Lesson,
    Archive,
    Homework,
    Subject
}