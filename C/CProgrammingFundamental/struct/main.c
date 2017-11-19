//
//  main.c
//  struct
//
//  Created by ruby on 15/11/22.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

#include <stdio.h>

void testStruct() {
    struct Person{
        int age;
        char sex;
        double height;
        double weight;
        char *name;
    };
    
    struct Person person;
    
    person.age = 10;
    person.sex = 'M';
    person.weight = 20.2;
    person.height = 1.2;
    person.name = "小明";
    
    printf("age = %d, sex = %c, height = %.2lf, weight = %.2f, name = %s\n", person.age, person.sex, person.height, person.weight, person.name);
    
    struct Person p1;
    
    p1 = (struct Person){26, 'M', 1.75, 60, "Louis"};
    printf("age = %d, sex = %c, height = %.2lf, weight = %.2f, name = %s\n", p1.age, p1.sex, p1.height, p1.weight, p1.name);
    
    struct Person p2 = {25, 'F', 1.65, 50, "Ruby"};
    printf("age = %d, sex = %c, height = %.2lf, weight = %.2f, name = %s\n", p2.age, p2.sex, p2.height, p2.weight, p2.name);
    
}

void test2() {
    struct{
        int age;
        char sex;
    } p1,p2;
    
    p1.age = 10;
    p1.sex = 'M';
    printf("age = %d, sex = %c\n", p1.age, p1.sex);
}

void test3() {
    struct Date{
        int year;
        int month;
        int day;
    };
    
    struct Date date;
    printf("%p\n", &date);
    printf("%p\n", &date.year);
    
    size_t size = sizeof(struct Date);
    printf("%lu\n", size);
    
    struct Person{
        int age;
        char sex;
    };
    
    size_t size2 = sizeof(struct Person);
    printf("%lu\n", size2);
    
}

struct Dog{
    char *name;
    int age;
};

void structArray() {
    //    struct Dog dogs[5];
    //    dogs[0] = (struct Dog){"理财",1};
    //    dogs[1].age = 1;
    //    dogs[1].name = "大黄";
    
    struct Dog dogs[3] = {{"旺财",1},{"大黄",2},{"来福",3}};
    
    int len = sizeof(dogs) / sizeof(struct Dog);
    for (int i = 0; i < len; i++) {
        printf("age = %d, name = %s\n", dogs[i].age, dogs[i].name);
    }
}

struct Student{
    char *name;
    int no;
    double score;
};

void structPointer() {
    struct Student stu = {"大木", 60, 59};
    
    struct Student *sp = &stu;
    
    (*sp).score = 60;
    sp->name = "小木";
    sp->no = 59;
    
    printf("name = %s, no = %d, score = %.2lf\n", stu.name, stu.no, stu.score);
}

struct Date{
    int year;
    int month;
    int day;
};

struct Employee{
    int no;
    char name[20];
    struct Date inDate;
    struct Date birthDate;
    struct Date outDate;
};

int main(int argc, const char * argv[]) {
    
    struct Employee emp = {1,"小明",{2014,10,14},{1990,10,14},{2015,11,14}};
    
    printf("no = %d, name = %s, 入职日期 = %d-%d-%d\n",emp.no,emp.name,emp.inDate.year,emp.inDate.month,emp.inDate.day);
    
    return 0;
}
