import 'dotenv/config';
import { Category } from './models/category';
import { Config } from './models/config';
import { User } from './models/user';
import { Admin } from './models/admin';
import bcrypt from 'bcrypt';

async function seed() {
    try {
        // Sync models first just in case
        await Category.sync();
        await User.sync();
        await Config.sync();
        await Admin.sync();

        // Admin
        const adminCount = await Admin.count();
        if (adminCount === 0) {
            const passwordBcrypt = await bcrypt.hash('admin123', 10);
            await Admin.create({
                Aname: 'Super',
                Alastname: 'Admin',
                Aemail: 'admin@admin.com',
                Awhatsapp: '0000000000',
                Apassword: passwordBcrypt,
                Astatus: 1
            });
            console.log('Admin creado: admin@admin.com / admin123');
        }

        // Category
        const categoryCount = await Category.count();
        if (categoryCount === 0) {
            await Category.create({
                Cname: 'General',
                Cstatus: 1
            });
            console.log('Categoría General creada');
        }

        // User
        const userCount = await User.count();
        if (userCount === 0) {
            await User.create({
                Uname: 'Juan',
                Ulastname: 'Perez',
                Uemail: 'juan@example.com',
                Uwhatsapp: '1234567890',
                CategoryId: 1,
                Ustatus: 1
            });
            console.log('Usuario de prueba creado');
        }

        // Config
        const configCount = await Config.count();
        if (configCount === 0) {
            await Config.create({
                Chost: 'smtp.gmail.com',
                Cport: '465',
                Csecure: 'true',
                Cauth: 'tsoftwareecuador@gmail.com',
                Cpass: 'app_password_here',
                Cstatus: 1
            });
            console.log('Configuración de correo creada');
        }

        console.log('Seed terminado con éxito.');
        process.exit(0);
    } catch (error) {
        console.error('Error al ejecutar el seed:', error);
        process.exit(1);
    }
}

seed();
