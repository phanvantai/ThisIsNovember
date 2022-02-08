import { Application } from "express";
import { create, all, get, patch, remove } from "./controller";

import { isAuthenticated } from "../auth/authenticated";
import { isAuthorized } from "../auth/authorized";

export function routesConfig(app: Application) {
    app.post('/users',
        //isAuthenticated,
        //isAuthorized({ hasRole: ['admin', 'contributor'] }),
        create
    );
    // lists all users
    app.get('/users', [
        // isAuthenticated,
        // isAuthorized({ hasRole: ['admin', 'contributor'] }),
        all
    ]);
    
    // get :id user
    app.get('/users/:id', [
        isAuthenticated,
        isAuthorized({ hasRole: ['admin', 'contributor'], allowSameUser: true }),
        get
    ]);

    // updates :id user
    app.patch('/users/:id', [
        isAuthenticated,
        isAuthorized({ hasRole: ['admin', 'contributor'], allowSameUser: true }),
        patch
    ]);

    // deletes :id user
    app.delete('/users/:id', [
        isAuthenticated,
        isAuthorized({ hasRole: ['admin', 'contributor'] }),
        remove
    ]);
 }