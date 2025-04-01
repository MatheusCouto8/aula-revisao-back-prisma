import express from "express";
import PersonagemController from "../controllers/personagemController.js";

const personagemRouter = express.Router();

// Rotas de personagens
// GET /api/personagens - Listar todos os personagens
personagemRouter.get("/", PersonagemController.getAllPersonagens);

// GET /api/personagens/:id - Obter um personagem pelo ID
personagemRouter.get("/:id", PersonagemController.getPersonagemById);

// POST /api/personagens - Criar um novo personagem
personagemRouter.post("/", PersonagemController.createPersonagem);

// PUT /api/personagens/:id - Atualizar um personagem
personagemRouter.put("/:id", PersonagemController.updatePersonagem);

// DELETE /api/personagens/:id - Remover um personagem
personagemRouter.delete("/:id", PersonagemController.deletePersonagem);

export default personagemRouter;
