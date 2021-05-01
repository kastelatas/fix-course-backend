const uuid = require('uuid')
const path = require('path')
const {Course, Subject, Lesson} = require('../models/models')

class courseController {
    async create(req, res) {
        const {title, description} = req.body
        const {banner} = req.files
        const user = req.user;
        let fileName = uuid.v4() + '.jpg'
        // banner.mv(path.resolve(__dirname, '..', 'media/image', fileName))
        const course = await Course.create({title, banner: fileName, description, userId: user.id});
        // let subject = {};
        // let lesson = {};
        // if (typeof subject_theme == "object") {
        //     for (let item in subject_theme) {
        //          subject = await Subject.create({title: subject_theme[item], courseId: course.id})
        //          lesson = await Lesson.create({title: lesson_title, description: lesson_description, subjectId: subject.id})
        //
        //     }
        // }

        res.json({course})
    }

    async getAll(req, res) {

    }

    async getOne(req, res) {

    }
}

module.exports = new courseController()