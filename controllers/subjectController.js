const path = require('path')
const ApiError = require('../error/ApiError')
const {Course, Subject, Lesson} = require('../models/models')

class subjectController{
    async create(req, res, next) {
        const {title, description} = req.body
        const {id} = req.query
        if (!title || !description || !id) {
            return next(ApiError.badRequest('Ошибка'))
        }
        const course = await Course.findOne({where:{id}})
        if (!course) {
            return next(ApiError.badRequest('КУРС Ошибка'))
        }

        const subject = await Subject.create({title, description, courseId: course.id})

        res.json({subject})
    }

    async getAll(req, res) {
        const subject = await Subject.findAll();
        res.json({subject})
    }

    async getOne(req, res, next) {
        const {id} = req.params
        if (!id) {
            return next(ApiError.badRequest('Ошибка'))
        }
        const subject = await Subject.findOne({
            where:{
                id
            },
        });
        res.json({subject})

    }
}

module.exports = new subjectController()