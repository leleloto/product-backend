import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { PrismaService } from './prisma/prisma.service';
import { ProductService } from './product/product.service';
import { OptionService } from './option/option.service';

@Module({
  imports: [],
  controllers: [AppController],
  providers: [AppService, PrismaService, ProductService, OptionService],
})
export class AppModule {}
