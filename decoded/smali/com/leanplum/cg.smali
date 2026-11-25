.class final Lcom/leanplum/cg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/leanplum/Var",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static n:Lcom/leanplum/ch;

.field private static o:Z

.field private static p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static q:Ljava/lang/Object;

.field private static r:Z

.field private static s:I

.field private static t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final u:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/leanplum/cg;->b:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/leanplum/cg;->c:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/leanplum/cg;->d:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/leanplum/cg;->a:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/leanplum/cg;->e:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/leanplum/cg;->f:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/leanplum/cg;->g:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/leanplum/cg;->h:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/leanplum/cg;->i:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/leanplum/cg;->m:Ljava/util/List;

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/leanplum/cg;->o:Z

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/leanplum/cg;->p:Ljava/util/Map;

    .line 66
    const-string/jumbo v0, "(?:[^\\.\\[.(\\\\]+|\\\\.)+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/leanplum/cg;->u:Ljava/util/regex/Pattern;

    return-void
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 170
    if-nez p1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-object p0

    .line 173
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_3

    :cond_2
    move-object p0, p1

    .line 181
    goto :goto_0

    .line 184
    :cond_3
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v1, v0

    .line 185
    :goto_1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_7

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v2, v0

    .line 186
    :goto_2
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    move-object v3, v0

    .line 187
    :goto_3
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    move-object v7, v0

    .line 191
    :goto_4
    if-nez p0, :cond_16

    .line 192
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 194
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 195
    instance-of v9, v0, Ljava/lang/String;

    if-nez v9, :cond_a

    move v0, v5

    .line 214
    :goto_5
    instance-of v5, p0, Ljava/util/List;

    if-nez v5, :cond_5

    if-eqz v0, :cond_f

    .line 215
    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 217
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    move-object v0, p1

    .line 184
    check-cast v0, Ljava/lang/Iterable;

    move-object v1, v0

    goto :goto_1

    :cond_7
    move-object v0, p0

    .line 185
    check-cast v0, Ljava/lang/Iterable;

    move-object v2, v0

    goto :goto_2

    :cond_8
    move-object v3, v4

    .line 186
    goto :goto_3

    :cond_9
    move-object v7, v4

    .line 187
    goto :goto_4

    .line 199
    :cond_a
    check-cast v0, Ljava/lang/String;

    .line 200
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_b

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x5b

    if-ne v9, v10, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x5d

    if-eq v9, v10, :cond_c

    :cond_b
    move v0, v5

    .line 202
    goto :goto_5

    .line 204
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 205
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v5

    .line 207
    goto :goto_5

    .line 219
    :cond_d
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 220
    check-cast v0, Ljava/lang/String;

    .line 221
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 222
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 223
    :goto_8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_e

    .line 224
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 226
    :cond_e
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/leanplum/cg;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 232
    :cond_f
    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_10

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_14

    .line 233
    :cond_10
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 234
    if-eqz v2, :cond_12

    .line 235
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 236
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_11

    .line 237
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 241
    :cond_12
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 242
    if-eqz v7, :cond_13

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_b
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/leanplum/cg;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_13
    move-object v0, v4

    goto :goto_b

    :cond_14
    move-object p0, v4

    .line 246
    goto/16 :goto_0

    :cond_15
    move v0, v6

    goto/16 :goto_5

    :cond_16
    move v0, v5

    goto/16 :goto_5
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 79
    if-nez p0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object v0

    .line 82
    :cond_1
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_2

    move-object v0, p0

    .line 83
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    check-cast p0, Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 89
    :cond_2
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 90
    check-cast v0, Ljava/util/List;

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 91
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    check-cast p0, Ljava/util/List;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 259
    sget-object v0, Lcom/leanplum/cg;->q:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/leanplum/cg;->q:Ljava/lang/Object;

    :goto_0
    invoke-static {p0, v0}, Lcom/leanplum/cg;->a([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/leanplum/cg;->a:Ljava/util/Map;

    goto :goto_0
.end method

.method public static a([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 251
    .line 252
    array-length v2, p0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 253
    invoke-static {p1, v3, v1}, Lcom/leanplum/cg;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_0
    return-object p1
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 678
    const/4 v0, 0x0

    .line 679
    instance-of v1, p0, Ljava/lang/Integer;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/lang/Long;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/lang/Short;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/lang/Character;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/lang/Byte;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/math/BigInteger;

    if-eqz v1, :cond_2

    .line 685
    :cond_0
    const-string/jumbo v0, "integer"

    .line 700
    :cond_1
    :goto_0
    return-object v0

    .line 686
    :cond_2
    instance-of v1, p0, Ljava/lang/Float;

    if-nez v1, :cond_3

    instance-of v1, p0, Ljava/lang/Double;

    if-nez v1, :cond_3

    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_4

    .line 689
    :cond_3
    const-string/jumbo v0, "float"

    goto :goto_0

    .line 690
    :cond_4
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 691
    const-string/jumbo v0, "string"

    goto :goto_0

    .line 692
    :cond_5
    instance-of v1, p0, Ljava/util/List;

    if-nez v1, :cond_6

    instance-of v1, p0, Ljava/lang/reflect/Array;

    if-eqz v1, :cond_7

    .line 694
    :cond_6
    const-string/jumbo v0, "list"

    goto :goto_0

    .line 695
    :cond_7
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_8

    .line 696
    const-string/jumbo v0, "group"

    goto :goto_0

    .line 697
    :cond_8
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 698
    const-string/jumbo v0, "bool"

    goto :goto_0
.end method

.method public static a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    sget-object v0, Lcom/leanplum/cg;->g:Ljava/util/Map;

    return-object v0
.end method

.method public static a(Lcom/leanplum/Var;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/leanplum/Var",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 150
    sget-object v0, Lcom/leanplum/cg;->b:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/leanplum/Var;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v6, Lcom/leanplum/cg;->a:Ljava/util/Map;

    monitor-enter v6

    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/leanplum/Var;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/leanplum/Var;->nameComponents()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/leanplum/Var;->defaultValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/leanplum/Var;->kind()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/leanplum/cg;->a:Ljava/util/Map;

    sget-object v5, Lcom/leanplum/cg;->e:Ljava/util/Map;

    invoke-static/range {v0 .. v5}, Lcom/leanplum/cg;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 155
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Lcom/leanplum/ch;)V
    .locals 0

    .prologue
    .line 642
    sput-object p0, Lcom/leanplum/cg;->n:Lcom/leanplum/ch;

    .line 643
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/util/List;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/leanplum/co",
            "<*>;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 660
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 661
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 662
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 663
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/leanplum/co;

    .line 664
    invoke-virtual {v6}, Lcom/leanplum/co;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lcom/leanplum/co;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/leanplum/cg;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/leanplum/co;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6}, Lcom/leanplum/co;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lcom/leanplum/cg;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 666
    invoke-virtual {v6}, Lcom/leanplum/co;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 668
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 669
    const-string/jumbo v1, "kind"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    const-string/jumbo v1, "values"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    const-string/jumbo v1, "kinds"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    const-string/jumbo v1, "order"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    const-string/jumbo v1, "options"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    sget-object v1, Lcom/leanplum/cg;->f:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    return-void
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .line 141
    const/4 v0, 0x0

    move v1, v0

    move-object v0, p4

    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 142
    aget-object v2, p1, v1

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/leanplum/cg;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p4

    .line 141
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, p4

    goto :goto_0

    .line 144
    :cond_0
    check-cast v0, Ljava/util/Map;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-interface {p5, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 636
    sput-object p0, Lcom/leanplum/cg;->j:Ljava/util/Map;

    .line 637
    sput-object p2, Lcom/leanplum/cg;->l:Ljava/util/Map;

    .line 638
    sput-object p1, Lcom/leanplum/cg;->k:Ljava/util/Map;

    .line 639
    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 410
    if-eqz p0, :cond_1

    .line 411
    sput-object p0, Lcom/leanplum/cg;->g:Ljava/util/Map;

    .line 1164
    sget-object v1, Lcom/leanplum/cg;->a:Ljava/util/Map;

    monitor-enter v1

    .line 1165
    :try_start_0
    sget-object v0, Lcom/leanplum/cg;->a:Ljava/util/Map;

    sget-object v2, Lcom/leanplum/cg;->g:Ljava/util/Map;

    invoke-static {v0, v2}, Lcom/leanplum/cg;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/leanplum/cg;->q:Ljava/lang/Object;

    .line 1166
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/leanplum/cg;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 418
    sget-object v2, Lcom/leanplum/cg;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leanplum/Var;

    invoke-virtual {v0}, Lcom/leanplum/Var;->a()V

    goto :goto_0

    .line 1166
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 420
    :cond_0
    invoke-static {}, Lcom/leanplum/cg;->p()V

    .line 423
    :cond_1
    if-eqz p1, :cond_4

    .line 425
    sput-object p1, Lcom/leanplum/cg;->i:Ljava/util/Map;

    .line 426
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 427
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 428
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 429
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 430
    const-string/jumbo v2, "vars"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 432
    sget-object v2, Lcom/leanplum/cg;->f:Ljava/util/Map;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "action"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    const-string/jumbo v7, "values"

    aput-object v7, v6, v9

    invoke-static {v2, v6}, Lcom/leanplum/x;->a(Ljava/util/Map;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 434
    invoke-static {v2, v1}, Lcom/leanplum/cg;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 435
    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string/jumbo v0, "vars"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 439
    :cond_2
    sput-object v3, Lcom/leanplum/cg;->p:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 440
    sget-object v1, Lcom/leanplum/cg;->p:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 441
    const-string/jumbo v2, "action"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 442
    const-string/jumbo v2, "vars"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 444
    new-instance v4, Lcom/leanplum/ActionContext;

    const-string/jumbo v5, "action"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v2, v0}, Lcom/leanplum/ActionContext;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/leanplum/ActionContext;->b()V

    goto :goto_2

    .line 450
    :cond_4
    if-eqz p2, :cond_5

    .line 451
    sput-object p2, Lcom/leanplum/cg;->h:Ljava/util/Map;

    .line 454
    :cond_5
    if-nez p1, :cond_6

    if-eqz p2, :cond_7

    .line 455
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 456
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 457
    invoke-static {v0, v1}, Lcom/leanplum/cq;->a(Ljava/util/Set;Ljava/util/Set;)V

    .line 459
    invoke-static {}, Lcom/leanplum/cq;->b()Lcom/leanplum/bp;

    move-result-object v2

    .line 460
    if-eqz v2, :cond_7

    .line 461
    invoke-interface {v2, p2, v0, v1}, Lcom/leanplum/bp;->a(Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 465
    :cond_7
    if-eqz p3, :cond_8

    .line 466
    sput-object p3, Lcom/leanplum/cg;->m:Ljava/util/List;

    .line 469
    :cond_8
    sget v0, Lcom/leanplum/cg;->s:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/leanplum/cg;->s:I

    .line 471
    sget-boolean v0, Lcom/leanplum/cg;->r:Z

    if-nez v0, :cond_9

    .line 472
    invoke-static {}, Lcom/leanplum/cg;->e()V

    .line 1505
    sput-boolean v9, Lcom/leanplum/cg;->o:Z

    .line 1506
    sget-object v0, Lcom/leanplum/cg;->n:Lcom/leanplum/ch;

    if-eqz v0, :cond_9

    .line 1507
    sget-object v0, Lcom/leanplum/cg;->n:Lcom/leanplum/ch;

    invoke-virtual {v0}, Lcom/leanplum/ch;->a()V

    .line 475
    :cond_9
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 627
    sput-boolean p0, Lcom/leanplum/cg;->r:Z

    .line 628
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ZLjava/lang/String;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 103
    sget-boolean v1, Lcom/leanplum/cu;->k:Z

    if-eqz v1, :cond_0

    .line 104
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 106
    if-nez p2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 111
    if-eqz p3, :cond_3

    .line 112
    const-string/jumbo v2, "hash"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string/jumbo v2, "size"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :goto_1
    const-string/jumbo v2, ""

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Lcom/leanplum/cg;->c:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/leanplum/cg;->d:Ljava/util/Map;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {}, Lcom/leanplum/cg;->i()V

    .line 131
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 115
    :cond_3
    sget-boolean v2, Lcom/leanplum/cu;->j:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/leanplum/x;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 116
    invoke-static {p2}, Lcom/leanplum/g;->a(Ljava/io/InputStream;)Lcom/leanplum/cy;

    move-result-object v2

    .line 117
    const-string/jumbo v3, "hash"

    iget-object v4, v2, Lcom/leanplum/cy;->a:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v3, "size"

    iget v2, v2, Lcom/leanplum/cy;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 120
    :cond_4
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/leanplum/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/leanplum/g;->a(Ljava/lang/String;)I

    move-result v2

    .line 122
    const-string/jumbo v3, "size"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static a(ZZ)Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 520
    .line 521
    if-eqz p0, :cond_a

    sget-object v0, Lcom/leanplum/cg;->j:Ljava/util/Map;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/leanplum/cg;->a:Ljava/util/Map;

    sget-object v1, Lcom/leanplum/cg;->j:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move v5, v3

    .line 525
    :goto_0
    if-eqz p1, :cond_9

    sget-object v7, Lcom/leanplum/cg;->f:Ljava/util/Map;

    sget-object v8, Lcom/leanplum/cg;->l:Ljava/util/Map;

    .line 2484
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 525
    :cond_0
    :goto_1
    if-nez v4, :cond_9

    .line 530
    :goto_2
    if-eqz v3, :cond_3

    .line 531
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 532
    if-eqz p0, :cond_1

    .line 533
    const-string/jumbo v1, "vars"

    sget-object v2, Lcom/leanplum/cg;->a:Ljava/util/Map;

    invoke-static {v2}, Lcom/leanplum/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string/jumbo v1, "kinds"

    sget-object v2, Lcom/leanplum/cg;->e:Ljava/util/Map;

    invoke-static {v2}, Lcom/leanplum/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    :cond_1
    if-eqz p1, :cond_2

    .line 537
    const-string/jumbo v1, "actionDefinitions"

    sget-object v2, Lcom/leanplum/cg;->f:Ljava/util/Map;

    invoke-static {v2}, Lcom/leanplum/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    :cond_2
    const-string/jumbo v1, "fileAttributes"

    sget-object v2, Lcom/leanplum/cg;->c:Ljava/util/Map;

    invoke-static {v2}, Lcom/leanplum/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string/jumbo v1, "setVars"

    invoke-static {v1, v0}, Lcom/leanplum/y;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leanplum/y;->j()V

    .line 543
    :cond_3
    return v3

    .line 2487
    :cond_4
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2488
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 2489
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2490
    if-eqz v0, :cond_0

    .line 2493
    const-string/jumbo v2, "kind"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v6, "kind"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "values"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v6, "values"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "kinds"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v6, "kinds"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "options"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_3
    const-string/jumbo v6, "options"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7

    move v6, v3

    :goto_4
    if-ne v2, v6, :cond_0

    const-string/jumbo v2, "options"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "options"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_1

    :cond_6
    move v2, v4

    goto :goto_3

    :cond_7
    move v6, v4

    goto :goto_4

    :cond_8
    move v4, v3

    .line 2501
    goto/16 :goto_1

    :cond_9
    move v3, v5

    goto/16 :goto_2

    :cond_a
    move v5, v4

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    sget-object v0, Lcom/leanplum/cg;->u:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/leanplum/Var;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/leanplum/Var",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 160
    sget-object v0, Lcom/leanplum/cg;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leanplum/Var;

    return-object v0
.end method

.method public static b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    sget-object v0, Lcom/leanplum/cg;->i:Ljava/util/Map;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 368
    .line 370
    :try_start_0
    const-string/jumbo v1, "res/"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 371
    const/4 v2, 0x0

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 372
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 373
    const/4 v3, 0x0

    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 374
    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 376
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 380
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 276
    sget-boolean v0, Lcom/leanplum/cg;->o:Z

    return v0
.end method

.method public static d()V
    .locals 7

    .prologue
    .line 280
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 284
    const-string/jumbo v1, "__leanplum__"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 286
    invoke-static {}, Lcom/leanplum/y;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/leanplum/cg;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_0

    .line 296
    :cond_1
    :try_start_0
    new-instance v1, Lcom/leanplum/ad;

    invoke-static {}, Lcom/leanplum/y;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/leanplum/y;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/leanplum/ad;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string/jumbo v2, "__leanplum_variables"

    const-string/jumbo v3, "{}"

    invoke-virtual {v1, v0, v2, v3}, Lcom/leanplum/ad;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    const-string/jumbo v3, "__leanplum_messages"

    const-string/jumbo v4, "{}"

    invoke-virtual {v1, v0, v3, v4}, Lcom/leanplum/ad;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 301
    const-string/jumbo v4, "regions"

    const-string/jumbo v5, "{}"

    invoke-virtual {v1, v0, v4, v5}, Lcom/leanplum/ad;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 302
    const-string/jumbo v5, "variants"

    const-string/jumbo v6, "[]"

    invoke-virtual {v1, v0, v5, v6}, Lcom/leanplum/ad;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 303
    invoke-static {v2}, Lcom/leanplum/co;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v3}, Lcom/leanplum/co;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v4}, Lcom/leanplum/co;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/leanplum/co;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/leanplum/cg;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    .line 308
    const-string/jumbo v2, "deviceId"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/leanplum/ad;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 309
    if-eqz v2, :cond_2

    .line 310
    invoke-static {v2}, Lcom/leanplum/x;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 311
    invoke-static {v2}, Lcom/leanplum/y;->a(Ljava/lang/String;)V

    .line 316
    :cond_2
    :goto_1
    const-string/jumbo v2, "userId"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/leanplum/ad;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_3

    .line 318
    invoke-static {v0}, Lcom/leanplum/x;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 319
    invoke-static {v0}, Lcom/leanplum/y;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :cond_3
    :goto_2
    invoke-static {}, Lcom/leanplum/cg;->n()Ljava/util/Map;

    goto/16 :goto_0

    .line 313
    :cond_4
    :try_start_1
    const-string/jumbo v3, "Leanplum"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Invalid stored device id found: \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\"; discarding."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    const-string/jumbo v1, "Leanplum"

    const-string/jumbo v2, "Could not load variable diffs"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 321
    :cond_5
    :try_start_2
    const-string/jumbo v1, "Leanplum"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid stored user id found: \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\"; discarding."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public static e()V
    .locals 6

    .prologue
    .line 331
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    invoke-static {}, Lcom/leanplum/y;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 338
    const-string/jumbo v1, "__leanplum__"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 340
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 342
    new-instance v2, Lcom/leanplum/ad;

    invoke-static {}, Lcom/leanplum/y;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/leanplum/y;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/leanplum/ad;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    sget-object v0, Lcom/leanplum/cg;->g:Ljava/util/Map;

    invoke-static {v0}, Lcom/leanplum/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 344
    const-string/jumbo v3, "__leanplum_variables"

    invoke-virtual {v2, v0}, Lcom/leanplum/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 345
    sget-object v0, Lcom/leanplum/cg;->p:Ljava/util/Map;

    invoke-static {v0}, Lcom/leanplum/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 346
    const-string/jumbo v3, "__leanplum_messages"

    invoke-virtual {v2, v0}, Lcom/leanplum/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 347
    sget-object v0, Lcom/leanplum/cg;->h:Ljava/util/Map;

    invoke-static {v0}, Lcom/leanplum/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 348
    const-string/jumbo v3, "regions"

    invoke-virtual {v2, v0}, Lcom/leanplum/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 350
    :try_start_0
    sget-object v0, Lcom/leanplum/cg;->m:Ljava/util/List;

    invoke-static {v0}, Lcom/leanplum/co;->a(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    const-string/jumbo v3, "variants"

    invoke-virtual {v2, v0}, Lcom/leanplum/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 355
    :goto_1
    const-string/jumbo v0, "deviceId"

    invoke-static {}, Lcom/leanplum/y;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/leanplum/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 356
    const-string/jumbo v0, "userId"

    invoke-static {}, Lcom/leanplum/y;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/leanplum/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 358
    :try_start_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 360
    :catch_0
    move-exception v0

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 352
    :catch_1
    move-exception v0

    .line 353
    const-string/jumbo v3, "Leanplum"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error converting "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/leanplum/cg;->m:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to JSON"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 478
    sget v0, Lcom/leanplum/cg;->s:I

    return v0
.end method

.method static g()Z
    .locals 2

    .prologue
    .line 512
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/leanplum/cg;->a(ZZ)Z

    move-result v0

    return v0
.end method

.method static h()Z
    .locals 2

    .prologue
    .line 516
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/leanplum/cg;->a(ZZ)Z

    move-result v0

    return v0
.end method

.method static i()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 549
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/leanplum/cg;->k:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/leanplum/Leanplum;->hasStartedAndRegisteredAsDeveloper()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/leanplum/cu;->n:Z

    if-nez v0, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 557
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 561
    sget-object v3, Lcom/leanplum/cg;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 562
    sget-object v1, Lcom/leanplum/cg;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 563
    sget-object v2, Lcom/leanplum/cg;->k:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 565
    const-string/jumbo v8, ""

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 566
    if-eqz v2, :cond_7

    const-string/jumbo v8, ""

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_2
    check-cast v2, Ljava/util/Map;

    .line 568
    invoke-static {v1, v2}, Lcom/leanplum/g;->a(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 569
    sget-boolean v8, Lcom/leanplum/cu;->m:Z

    if-eqz v8, :cond_2

    .line 570
    const-string/jumbo v8, "Leanplum"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Will upload file "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ". Local attributes: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "; server attributes: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_2
    const-string/jumbo v2, "hash"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 575
    if-nez v2, :cond_9

    .line 576
    const-string/jumbo v2, ""

    move-object v8, v2

    .line 579
    :goto_3
    invoke-static {v0}, Lcom/leanplum/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 582
    const/high16 v2, 0x1900000

    if-le v3, v2, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_4

    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    const/16 v11, 0x10

    if-lt v2, v11, :cond_5

    .line 584
    :cond_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 585
    const-string/jumbo v3, "data"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const-string/jumbo v3, "uploadFile"

    invoke-static {v3, v2}, Lcom/leanplum/y;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Lcom/leanplum/y;->a(Ljava/util/List;Ljava/util/List;)V

    .line 590
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 591
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 592
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    .line 597
    :cond_5
    const-string/jumbo v2, "size"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 598
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v3, v2

    .line 599
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 602
    :try_start_0
    const-string/jumbo v10, "hash"

    invoke-virtual {v2, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 603
    const-string/jumbo v8, "size"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "size"

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 604
    const-string/jumbo v1, "filename"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 605
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :goto_4
    sget-object v1, Lcom/leanplum/cg;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    move v0, v3

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    move v3, v0

    .line 613
    goto/16 :goto_1

    .line 566
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 606
    :catch_0
    move-exception v1

    .line 608
    const-string/jumbo v2, "Leanplum"

    const-string/jumbo v8, "Unable to upload files"

    invoke-static {v2, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 609
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 615
    :cond_8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 616
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 617
    const-string/jumbo v1, "data"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    const-string/jumbo v1, "uploadFile"

    invoke-static {v1, v0}, Lcom/leanplum/y;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;

    move-result-object v0

    invoke-virtual {v0, v7, v5}, Lcom/leanplum/y;->a(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_9
    move-object v8, v2

    goto/16 :goto_3
.end method

.method public static j()Z
    .locals 1

    .prologue
    .line 631
    sget-boolean v0, Lcom/leanplum/cg;->r:Z

    return v0
.end method

.method public static k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 646
    sget-object v0, Lcom/leanplum/cg;->m:Ljava/util/List;

    return-object v0
.end method

.method public static l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    sget-object v0, Lcom/leanplum/cg;->f:Ljava/util/Map;

    return-object v0
.end method

.method public static m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 654
    sget-object v0, Lcom/leanplum/cg;->p:Ljava/util/Map;

    return-object v0
.end method

.method public static n()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 704
    sget-object v0, Lcom/leanplum/cg;->t:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 705
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 706
    const-string/jumbo v1, "__leanplum__"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 708
    new-instance v1, Lcom/leanplum/ad;

    invoke-static {}, Lcom/leanplum/y;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/leanplum/y;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/leanplum/ad;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :try_start_0
    const-string/jumbo v2, "__leanplum_attributes"

    const-string/jumbo v3, "{}"

    invoke-virtual {v1, v0, v2, v3}, Lcom/leanplum/ad;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/leanplum/co;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/leanplum/cg;->t:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    :cond_0
    :goto_0
    sget-object v0, Lcom/leanplum/cg;->t:Ljava/util/Map;

    return-object v0

    .line 712
    :catch_0
    move-exception v0

    .line 713
    const-string/jumbo v1, "Leanplum"

    const-string/jumbo v2, "Could not load user attributes"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 714
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/leanplum/cg;->t:Ljava/util/Map;

    goto :goto_0
.end method

.method public static o()V
    .locals 5

    .prologue
    .line 721
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/leanplum/y;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/leanplum/cg;->t:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 725
    const-string/jumbo v1, "__leanplum__"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 727
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 729
    sget-object v1, Lcom/leanplum/cg;->t:Ljava/util/Map;

    invoke-static {v1}, Lcom/leanplum/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 730
    new-instance v2, Lcom/leanplum/ad;

    invoke-static {}, Lcom/leanplum/y;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/leanplum/y;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/leanplum/ad;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string/jumbo v3, "__leanplum_attributes"

    invoke-virtual {v2, v1}, Lcom/leanplum/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 733
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 735
    :catch_0
    move-exception v1

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static p()V
    .locals 5

    .prologue
    .line 389
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/leanplum/cg;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 390
    sget-object v1, Lcom/leanplum/cg;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leanplum/Var;

    .line 391
    iget-object v2, v0, Lcom/leanplum/Var;->a:Ljava/lang/String;

    .line 392
    iget-boolean v1, v0, Lcom/leanplum/Var;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/leanplum/Var;->kind()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "file"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/leanplum/Var;->defaultValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    sget-object v1, Lcom/leanplum/cg;->c:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 396
    sget-object v4, Lcom/leanplum/cg;->d:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 397
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 398
    invoke-virtual {v0}, Lcom/leanplum/Var;->stringValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/leanplum/cg;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/leanplum/Var;->setOverrideResId(I)V

    goto :goto_0

    .line 402
    :cond_1
    return-void
.end method
