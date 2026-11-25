.class public Lcom/leanplum/annotations/Parser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 121
    array-length v7, v6

    move v5, v2

    :goto_0
    if-ge v5, v7, :cond_14

    aget-object v8, v6, v5

    .line 124
    const-class v0, Lcom/leanplum/annotations/Variable;

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    const-class v0, Lcom/leanplum/annotations/Variable;

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/leanplum/annotations/Variable;

    .line 126
    invoke-interface {v0}, Lcom/leanplum/annotations/Variable;->group()Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-interface {v0}, Lcom/leanplum/annotations/Variable;->name()Ljava/lang/String;

    move-result-object v0

    move v4, v2

    .line 138
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 139
    :cond_0
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 141
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 142
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, "."

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_2
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 146
    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v9

    .line 147
    const-string/jumbo v10, "int"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 148
    invoke-virtual {v8, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "integer"

    invoke-static {p0, v0, v3, v4, v8}, Lcom/leanplum/annotations/Parser;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    .line 121
    :cond_3
    :goto_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 128
    :cond_4
    const-class v0, Lcom/leanplum/annotations/File;

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    const-class v0, Lcom/leanplum/annotations/File;

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/leanplum/annotations/File;

    .line 130
    invoke-interface {v0}, Lcom/leanplum/annotations/File;->group()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-interface {v0}, Lcom/leanplum/annotations/File;->name()Ljava/lang/String;

    move-result-object v0

    move v4, v1

    .line 132
    goto :goto_1

    .line 149
    :cond_5
    const-string/jumbo v10, "byte"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 150
    invoke-virtual {v8, p0}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const-string/jumbo v4, "integer"

    invoke-static {p0, v0, v3, v4, v8}, Lcom/leanplum/annotations/Parser;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    goto :goto_2

    .line 151
    :cond_6
    const-string/jumbo v10, "short"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 152
    invoke-virtual {v8, p0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    const-string/jumbo v4, "integer"

    invoke-static {p0, v0, v3, v4, v8}, Lcom/leanplum/annotations/Parser;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    goto :goto_2

    .line 153
    :cond_7
    const-string/jumbo v10, "long"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 154
    invoke-virtual {v8, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "integer"

    invoke-static {p0, v0, v3, v4, v8}, Lcom/leanplum/annotations/Parser;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    goto :goto_2

    .line 155
    :cond_8
    const-string/jumbo v10, "char"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 156
    invoke-virtual {v8, p0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string/jumbo v4, "integer"

    invoke-static {p0, v0, v3, v4, v8}, Lcom/leanplum/annotations/Parser;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    goto :goto_2

    .line 157
    :cond_9
    const-string/jumbo v10, "float"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 158
    invoke-virtual {v8, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string/jumbo v4, "float"

    invoke-static {p0, v0, v3, v4, v8}, Lcom/leanplum/annotations/Parser;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    goto/16 :goto_2

    .line 159
    :cond_a
    const-string/jumbo v10, "double"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 160
    invoke-virtual {v8, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string/jumbo v4, "float"

    invoke-static {p0, v0, v3, v4, v8}, Lcom/leanplum/annotations/Parser;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    goto/16 :goto_2

    .line 161
    :cond_b
    const-string/jumbo v10, "boolean"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 162
    invoke-virtual {v8, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v4, "bool"

    invoke-static {p0, v0, v3, v4, v8}, Lcom/leanplum/annotations/Parser;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    goto/16 :goto_2

    .line 163
    :cond_c
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 164
    const-string/jumbo v3, "Leanplum"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Variable "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " is an unsupported primitive type"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 165
    :cond_d
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 166
    const-string/jumbo v3, "Leanplum"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Variable "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " should be a List instead of an Array"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 167
    :cond_e
    const-class v9, Ljava/util/List;

    invoke-virtual {v3, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 168
    invoke-virtual {v8, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "list"

    invoke-static {p0, v0, v3, v4, v8}, Lcom/leanplum/annotations/Parser;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    goto/16 :goto_2

    .line 169
    :cond_f
    const-class v9, Ljava/util/Map;

    invoke-virtual {v3, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 170
    invoke-virtual {v8, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "group"

    invoke-static {p0, v0, v3, v4, v8}, Lcom/leanplum/annotations/Parser;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    goto/16 :goto_2

    .line 172
    :cond_10
    invoke-virtual {v8, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 173
    if-nez v3, :cond_11

    const/4 v3, 0x0

    .line 174
    :goto_3
    if-eqz v4, :cond_13

    .line 1061
    invoke-static {v0, v3}, Lcom/leanplum/Var;->defineFile(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/Var;

    move-result-object v3

    .line 1062
    if-eqz p0, :cond_12

    move v0, v1

    .line 1063
    :goto_4
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1064
    new-instance v9, Lcom/leanplum/annotations/b;

    invoke-direct {v9, v4, v0, v8, v3}, Lcom/leanplum/annotations/b;-><init>(Ljava/lang/ref/WeakReference;ZLjava/lang/reflect/Field;Lcom/leanplum/Var;)V

    invoke-virtual {v3, v9}, Lcom/leanplum/Var;->addFileReadyHandler(Lcom/leanplum/callbacks/VariableCallback;)V

    goto/16 :goto_2

    .line 173
    :cond_11
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_12
    move v0, v2

    .line 1062
    goto :goto_4

    .line 177
    :cond_13
    const-string/jumbo v4, "string"

    invoke-static {p0, v0, v3, v4, v8}, Lcom/leanplum/annotations/Parser;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    goto/16 :goto_2

    .line 181
    :cond_14
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Field;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {p1, p2, p3}, Lcom/leanplum/Var;->define(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcom/leanplum/Var;

    move-result-object v1

    .line 27
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 28
    :goto_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 29
    new-instance v3, Lcom/leanplum/annotations/a;

    invoke-direct {v3, v2, v0, p4, v1}, Lcom/leanplum/annotations/a;-><init>(Ljava/lang/ref/WeakReference;ZLjava/lang/reflect/Field;Lcom/leanplum/Var;)V

    invoke-virtual {v1, v3}, Lcom/leanplum/Var;->addValueChangedHandler(Lcom/leanplum/callbacks/VariableCallback;)V

    .line 54
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs parseVariables([Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 96
    :try_start_0
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    .line 97
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/leanplum/annotations/Parser;->a(Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const-string/jumbo v1, "Leanplum"

    const-string/jumbo v2, "Error parsing variables"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    :cond_0
    return-void
.end method

.method public static varargs parseVariablesForClasses([Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 109
    :try_start_0
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    .line 110
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/leanplum/annotations/Parser;->a(Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    const-string/jumbo v1, "Leanplum"

    const-string/jumbo v2, "Error parsing variables"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    :cond_0
    return-void
.end method
