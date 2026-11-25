.class Lcom/jirbo/adcolony/h;
.super Lcom/jirbo/adcolony/j;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jirbo/adcolony/j;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/jirbo/adcolony/j;-><init>()V

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/h;->a:Ljava/util/HashMap;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/h;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;D)D
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/jirbo/adcolony/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/j;

    .line 234
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/j;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/j;->d()D

    move-result-wide p2

    .line 235
    :cond_0
    return-wide p2
.end method

.method a(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/jirbo/adcolony/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/j;

    .line 241
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/j;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/j;->e()I

    move-result p2

    .line 242
    :cond_0
    return p2
.end method

.method a(Ljava/lang/String;Lcom/jirbo/adcolony/d;)Lcom/jirbo/adcolony/d;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/jirbo/adcolony/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/j;

    .line 205
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/j;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/j;->h()Lcom/jirbo/adcolony/d;

    move-result-object p2

    .line 206
    :cond_0
    return-object p2
.end method

.method a(Ljava/lang/String;)Lcom/jirbo/adcolony/h;
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;Lcom/jirbo/adcolony/h;)Lcom/jirbo/adcolony/h;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/jirbo/adcolony/h;

    invoke-direct {v0}, Lcom/jirbo/adcolony/h;-><init>()V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Lcom/jirbo/adcolony/h;)Lcom/jirbo/adcolony/h;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/jirbo/adcolony/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/j;

    .line 198
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/j;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/j;->m()Lcom/jirbo/adcolony/h;

    move-result-object p2

    .line 199
    :cond_0
    return-object p2
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/jirbo/adcolony/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/j;

    .line 227
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/j;->i_()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/j;->b()Ljava/lang/String;

    move-result-object p2

    .line 228
    :cond_0
    return-object p2
.end method

.method a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/d;

    move-result-object v1

    .line 212
    if-nez v1, :cond_1

    .line 221
    :cond_0
    return-object p2

    .line 214
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 215
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/jirbo/adcolony/d;->h_()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 217
    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/d;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    if-eqz v2, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/bu;)V
    .locals 7

    .prologue
    const/16 v6, 0x3a

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 143
    iget-object v0, p0, Lcom/jirbo/adcolony/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 145
    if-nez v5, :cond_0

    .line 147
    const-string/jumbo v0, "{}"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/bu;->a(Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 149
    :cond_0
    if-ne v5, v2, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/h;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/jirbo/adcolony/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/j;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/j;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    const-string/jumbo v0, "{"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/bu;->a(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/jirbo/adcolony/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/jirbo/adcolony/h;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jirbo/adcolony/j;

    .line 156
    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/h;->a(Lcom/jirbo/adcolony/bu;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1, v6}, Lcom/jirbo/adcolony/bu;->b(C)V

    .line 158
    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/j;->a(Lcom/jirbo/adcolony/bu;)V

    .line 160
    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/bu;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_1
    const-string/jumbo v0, "{"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/bu;->b(Ljava/lang/String;)V

    .line 165
    iget v0, p1, Lcom/jirbo/adcolony/bu;->b:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/jirbo/adcolony/bu;->b:I

    move v4, v3

    move v0, v2

    .line 168
    :goto_1
    if-ge v4, v5, :cond_4

    .line 170
    if-eqz v0, :cond_3

    move v2, v3

    .line 172
    :goto_2
    iget-object v0, p0, Lcom/jirbo/adcolony/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/jirbo/adcolony/h;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jirbo/adcolony/j;

    .line 174
    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/h;->a(Lcom/jirbo/adcolony/bu;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1, v6}, Lcom/jirbo/adcolony/bu;->b(C)V

    .line 176
    invoke-virtual {v1}, Lcom/jirbo/adcolony/j;->g()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/jirbo/adcolony/bu;->b()V

    .line 177
    :cond_2
    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/j;->a(Lcom/jirbo/adcolony/bu;)V

    .line 168
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_1

    .line 171
    :cond_3
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/bu;->c(C)V

    move v2, v0

    goto :goto_2

    .line 179
    :cond_4
    invoke-virtual {p1}, Lcom/jirbo/adcolony/bu;->b()V

    .line 181
    iget v0, p1, Lcom/jirbo/adcolony/bu;->b:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p1, Lcom/jirbo/adcolony/bu;->b:I

    .line 182
    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/bu;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method a(Ljava/lang/String;Lcom/jirbo/adcolony/j;)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/jirbo/adcolony/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    return-void
.end method

.method a(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/jirbo/adcolony/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/j;

    .line 248
    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {v0}, Lcom/jirbo/adcolony/j;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/j;->i_()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/jirbo/adcolony/j;->k()Z

    move-result p2

    .line 252
    :cond_1
    return p2
.end method

.method b(Ljava/lang/String;)Lcom/jirbo/adcolony/d;
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;Lcom/jirbo/adcolony/d;)Lcom/jirbo/adcolony/d;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/jirbo/adcolony/d;

    invoke-direct {v0}, Lcom/jirbo/adcolony/d;-><init>()V

    goto :goto_0
.end method

.method b(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 289
    new-instance v0, Lcom/jirbo/adcolony/f;

    invoke-direct {v0, p2, p3}, Lcom/jirbo/adcolony/f;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;Lcom/jirbo/adcolony/j;)V

    return-void
.end method

.method b(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 290
    new-instance v0, Lcom/jirbo/adcolony/c;

    invoke-direct {v0, p2}, Lcom/jirbo/adcolony/c;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;Lcom/jirbo/adcolony/j;)V

    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 288
    new-instance v0, Lcom/jirbo/adcolony/g;

    invoke-direct {v0, p2}, Lcom/jirbo/adcolony/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;Lcom/jirbo/adcolony/j;)V

    return-void
.end method

.method b(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 291
    if-eqz p2, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/a;->a:Lcom/jirbo/adcolony/j;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;Lcom/jirbo/adcolony/j;)V

    return-void

    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/a;->b:Lcom/jirbo/adcolony/j;

    goto :goto_0
.end method

.method c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 272
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    :cond_0
    return-object v0
.end method

.method d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method e(Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 277
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method f(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method g()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/jirbo/adcolony/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/h;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/jirbo/adcolony/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/j;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/j;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method g(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method l()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method m()Lcom/jirbo/adcolony/h;
    .locals 0

    .prologue
    .line 139
    return-object p0
.end method
