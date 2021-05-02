const uuid = require('uuid')
const path = require('path')
const ApiError = require('../error/ApiError')
const {Course, Subject, Lesson, Homework, Lesson_video} = require('../models/models')

class lessonController {
    async create(req, res, next) {
        const {title, description, subject_id} = req.body
        const {video, homework} = req.files
        if (!title || !description || !subject_id) {
            return next(ApiError.badRequest('Ошибка'))
        }

        const subject = await Subject.findOne({where: {id:subject_id}})
        if (!subject) {
            return next(ApiError.badRequest('КУРС Ошибка'))
        }
        let videoFileName = uuid.v4() + '.mp4'
        await video.mv(path.resolve(__dirname, '..', 'media/video', videoFileName))
        const mediaLesson = await Lesson_video.create({path: videoFileName})

        let homeworkFileName = uuid.v4() + '.zip'
        await homework.mv(path.resolve(__dirname, '..', 'media/homework', homeworkFileName))
        const homeworkLesson = await Homework.create({work: homeworkFileName})

        console.log(mediaLesson)

         const lesson = await Lesson.create({title, description, subjectId: subject_id,lessonVideoId:mediaLesson.id,homeworkId: homeworkLesson.id })

        res.json({lesson})
    }

    async getAll(req, res) {
        const lesson = await Lesson.findAll();
        res.json({lesson})
    }

    async getOne(req, res, next) {
        const {id} = req.params
        if (!id) {
            return next(ApiError.badRequest('Ошибка'))
        }
        const lesson = await Lesson.findOne({
            where: {
                id
            },
        });
        res.json({lesson})

    }
}

module.exports = new lessonController()