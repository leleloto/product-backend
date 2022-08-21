import { Injectable } from '@nestjs/common';
import { Prisma, Option } from '@prisma/client';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class OptionService {
    constructor(private prisma: PrismaService) {}

  async option(
    postWhereUniqueInput: Prisma.OptionWhereUniqueInput,
  ): Promise<Option | null> {
    return await this.prisma.option.findUnique({
      where: postWhereUniqueInput,
    });
  }

  async options(params: {
    skip?: number;
    take?: number;
    cursor?: Prisma.OptionWhereUniqueInput;
    where?: Prisma.OptionWhereInput;
    orderBy?: Prisma.OptionOrderByWithRelationInput;
  }): Promise<Option[]> {
    const { skip, take, cursor, where, orderBy } = params;
    return await this.prisma.option.findMany({
      skip,
      take,
      cursor,
      where,
      orderBy,
    });
  }

  async createOption(data: Prisma.OptionCreateInput): Promise<Option> {
    return await this.prisma.option.create({
      data,
    });
  }

  async updateOption(params: {
    where: Prisma.OptionWhereUniqueInput;
    data: Prisma.OptionUpdateInput;
  }): Promise<Option> {
    const { data, where } = params;
    return await this.prisma.option.update({
      data,
      where,
    });
  }

  async deleteOption(where: Prisma.OptionWhereUniqueInput): Promise<Option> {
    return await this.prisma.option.delete({
      where,
    });
  }
}
