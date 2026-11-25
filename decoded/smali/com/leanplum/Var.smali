.class public Lcom/leanplum/Var;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static t:Z


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field private c:Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:Ljava/lang/Double;

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/leanplum/callbacks/VariableCallback",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/leanplum/callbacks/VariableCallback",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I

.field private o:Ljava/lang/String;

.field private p:[B

.field private q:Z

.field private r:Z

.field private s:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/leanplum/Var;->i:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/leanplum/Var;->j:Ljava/util/List;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leanplum/Var;->q:Z

    .line 148
    return-void
.end method

.method static synthetic a(Lcom/leanplum/Var;I)I
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/leanplum/Var;->n:I

    return p1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/leanplum/cf;)Lcom/leanplum/Var;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "Lcom/leanplum/cf",
            "<TT;>;)",
            "Lcom/leanplum/Var",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const-string/jumbo v0, "Leanplum [Var]"

    const-string/jumbo v2, "define - Empty name parameter provided."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 102
    :cond_0
    :goto_0
    return-object v0

    .line 70
    :cond_1
    invoke-static {p0}, Lcom/leanplum/cg;->b(Ljava/lang/String;)Lcom/leanplum/Var;

    move-result-object v0

    .line 71
    if-nez v0, :cond_0

    .line 74
    sget-boolean v0, Lcom/leanplum/Leanplum;->a:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "__Android Resources"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    const-string/jumbo v0, "Leanplum"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "You should not create new variables after calling start (name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_2
    new-instance v6, Lcom/leanplum/Var;

    invoke-direct {v6}, Lcom/leanplum/Var;-><init>()V

    .line 80
    :try_start_0
    iput-object p0, v6, Lcom/leanplum/Var;->c:Ljava/lang/String;

    .line 81
    invoke-static {p0}, Lcom/leanplum/cg;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/leanplum/Var;->d:[Ljava/lang/String;

    .line 82
    iput-object p1, v6, Lcom/leanplum/Var;->f:Ljava/lang/Object;

    .line 83
    iput-object p1, v6, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    .line 84
    iput-object p2, v6, Lcom/leanplum/Var;->h:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "__Android Resources"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/leanplum/Var;->r:Z

    .line 88
    :cond_3
    if-eqz p3, :cond_4

    .line 89
    invoke-interface {p3, v6}, Lcom/leanplum/cf;->a(Lcom/leanplum/Var;)V

    .line 91
    :cond_4
    invoke-direct {v6}, Lcom/leanplum/Var;->c()V

    .line 92
    invoke-static {v6}, Lcom/leanplum/cg;->a(Lcom/leanplum/Var;)V

    .line 93
    iget-object v0, v6, Lcom/leanplum/Var;->h:Ljava/lang/String;

    const-string/jumbo v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 94
    iget-object v0, v6, Lcom/leanplum/Var;->a:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/leanplum/Var;->defaultValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    :goto_1
    invoke-virtual {v6}, Lcom/leanplum/Var;->defaultStream()Ljava/io/InputStream;

    move-result-object v2

    iget-boolean v3, v6, Lcom/leanplum/Var;->b:Z

    iget-object v4, v6, Lcom/leanplum/Var;->o:Ljava/lang/String;

    iget v5, v6, Lcom/leanplum/Var;->n:I

    invoke-static/range {v0 .. v5}, Lcom/leanplum/cg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ZLjava/lang/String;I)Z

    .line 98
    :cond_5
    invoke-virtual {v6}, Lcom/leanplum/Var;->a()V

    :goto_2
    move-object v0, v6

    .line 102
    goto :goto_0

    .line 94
    :cond_6
    invoke-virtual {v6}, Lcom/leanplum/Var;->defaultValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)Lcom/leanplum/Var;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "[B)",
            "Lcom/leanplum/Var",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    const-string/jumbo v0, "file"

    new-instance v1, Lcom/leanplum/bc;

    invoke-direct {v1, p2, p3, p4}, Lcom/leanplum/bc;-><init>(ILjava/lang/String;[B)V

    invoke-static {p0, p1, v0, v1}, Lcom/leanplum/Var;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/leanplum/cf;)Lcom/leanplum/Var;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/leanplum/Var;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/leanplum/Var;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/leanplum/Var;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/leanplum/Var;->d()V

    return-void
.end method

.method static synthetic a(Lcom/leanplum/Var;Z)Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leanplum/Var;->m:Z

    return v0
.end method

.method static synthetic a(Lcom/leanplum/Var;[B)[B
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/leanplum/Var;->p:[B

    return-object p1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/leanplum/Var;->r:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/leanplum/Leanplum;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/leanplum/Var;->t:Z

    if-nez v0, :cond_0

    .line 53
    const-string/jumbo v0, "Leanplum"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Leanplum hasn\'t finished retrieving values from the server. You should use a callback to make sure the value for \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/leanplum/Var;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' is ready. Otherwise, your app may not use the most up-to-date value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lcom/leanplum/Var;->t:Z

    .line 58
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/leanplum/Var;->a:Ljava/lang/String;

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/Var;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/leanplum/Var;->e:Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    iput-object v1, p0, Lcom/leanplum/Var;->e:Ljava/lang/Double;

    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_8

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leanplum/Var;->a:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/leanplum/Var;->e:Ljava/lang/Double;

    .line 197
    iget-object v0, p0, Lcom/leanplum/Var;->f:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/leanplum/Var;->f:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    goto :goto_0

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/leanplum/Var;->f:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 202
    iget-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    goto :goto_0

    .line 203
    :cond_4
    iget-object v0, p0, Lcom/leanplum/Var;->f:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 204
    iget-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    goto :goto_0

    .line 205
    :cond_5
    iget-object v0, p0, Lcom/leanplum/Var;->f:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 206
    iget-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    goto/16 :goto_0

    .line 207
    :cond_6
    iget-object v0, p0, Lcom/leanplum/Var;->f:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 208
    iget-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    goto/16 :goto_0

    .line 209
    :cond_7
    iget-object v0, p0, Lcom/leanplum/Var;->f:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    goto/16 :goto_0

    .line 212
    :cond_8
    iget-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Iterable;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-nez v0, :cond_9

    .line 214
    iget-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leanplum/Var;->a:Ljava/lang/String;

    .line 215
    iput-object v1, p0, Lcom/leanplum/Var;->e:Ljava/lang/Double;

    goto/16 :goto_0

    .line 217
    :cond_9
    iput-object v1, p0, Lcom/leanplum/Var;->a:Ljava/lang/String;

    .line 218
    iput-object v1, p0, Lcom/leanplum/Var;->e:Ljava/lang/Double;

    goto/16 :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 307
    iget-object v1, p0, Lcom/leanplum/Var;->i:Ljava/util/List;

    monitor-enter v1

    .line 308
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/leanplum/Var;->k:Z

    .line 309
    iget-object v0, p0, Lcom/leanplum/Var;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leanplum/callbacks/VariableCallback;

    .line 310
    invoke-virtual {v0, p0}, Lcom/leanplum/callbacks/VariableCallback;->setVariable(Lcom/leanplum/Var;)V

    .line 311
    invoke-static {}, Lcom/leanplum/m;->a()Lcom/leanplum/m;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/leanplum/m;->a(Ljava/lang/Runnable;)Ljava/lang/Boolean;

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static define(Ljava/lang/String;Ljava/lang/Object;)Lcom/leanplum/Var;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/leanplum/Var",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {p1}, Lcom/leanplum/cg;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/leanplum/Var;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/leanplum/cf;)Lcom/leanplum/Var;

    move-result-object v0

    return-object v0
.end method

.method public static define(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcom/leanplum/Var;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/leanplum/Var",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/leanplum/Var;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/leanplum/cf;)Lcom/leanplum/Var;

    move-result-object v0

    return-object v0
.end method

.method public static defineAsset(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/Var;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/leanplum/Var",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    const-string/jumbo v0, "file"

    new-instance v1, Lcom/leanplum/bb;

    invoke-direct {v1}, Lcom/leanplum/bb;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lcom/leanplum/Var;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/leanplum/cf;)Lcom/leanplum/Var;

    move-result-object v0

    return-object v0
.end method

.method public static defineColor(Ljava/lang/String;I)Lcom/leanplum/Var;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/leanplum/Var",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "color"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/leanplum/Var;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/leanplum/cf;)Lcom/leanplum/Var;

    move-result-object v0

    return-object v0
.end method

.method public static defineFile(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/Var;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/leanplum/Var",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    const-string/jumbo v0, "file"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/leanplum/Var;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/leanplum/cf;)Lcom/leanplum/Var;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 226
    iget-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    .line 227
    iget-object v1, p0, Lcom/leanplum/Var;->d:[Ljava/lang/String;

    invoke-static {v1}, Lcom/leanplum/cg;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    .line 228
    iget-object v1, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/leanplum/Var;->l:Z

    if-nez v0, :cond_0

    .line 234
    :cond_2
    invoke-direct {p0}, Lcom/leanplum/Var;->c()V

    .line 236
    invoke-static {}, Lcom/leanplum/cg;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/leanplum/Var;->c:Ljava/lang/String;

    const-string/jumbo v1, "__Android Resources"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/leanplum/Var;->h:Ljava/lang/String;

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/leanplum/Var;->k:Z

    if-nez v0, :cond_3

    .line 238
    invoke-direct {p0}, Lcom/leanplum/Var;->d()V

    .line 241
    :cond_3
    invoke-static {}, Lcom/leanplum/cg;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    invoke-static {}, Lcom/leanplum/Leanplum;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1278
    iget-object v1, p0, Lcom/leanplum/Var;->j:Ljava/util/List;

    monitor-enter v1

    .line 1279
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/Var;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leanplum/callbacks/VariableCallback;

    .line 1280
    invoke-virtual {v0, p0}, Lcom/leanplum/callbacks/VariableCallback;->setVariable(Lcom/leanplum/Var;)V

    .line 1281
    invoke-static {}, Lcom/leanplum/m;->a()Lcom/leanplum/m;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/leanplum/m;->a(Ljava/lang/Runnable;)Ljava/lang/Boolean;

    goto :goto_1

    .line 1283
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :cond_5
    iget-object v0, p0, Lcom/leanplum/Var;->h:Ljava/lang/String;

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 251
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-nez v0, :cond_6

    .line 252
    iget-boolean v1, p0, Lcom/leanplum/Var;->b:Z

    iget-object v2, p0, Lcom/leanplum/Var;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/leanplum/Var;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/leanplum/bd;

    invoke-direct {v3, p0}, Lcom/leanplum/bd;-><init>(Lcom/leanplum/Var;)V

    invoke-static {v1, v2, v0, v3}, Lcom/leanplum/g;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/leanplum/FileManager$DownloadFileResult;

    move-result-object v0

    .line 260
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/leanplum/Var;->q:Z

    .line 261
    sget-object v1, Lcom/leanplum/FileManager$DownloadFileResult;->DOWNLOADING:Lcom/leanplum/FileManager$DownloadFileResult;

    if-ne v0, v1, :cond_8

    .line 262
    iput-boolean v4, p0, Lcom/leanplum/Var;->k:Z

    .line 267
    :cond_6
    :goto_2
    invoke-static {}, Lcom/leanplum/Leanplum;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/leanplum/Var;->k:Z

    if-nez v0, :cond_7

    .line 268
    invoke-direct {p0}, Lcom/leanplum/Var;->d()V

    .line 272
    :cond_7
    invoke-static {}, Lcom/leanplum/Leanplum;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iput-boolean v4, p0, Lcom/leanplum/Var;->l:Z

    goto/16 :goto_0

    .line 263
    :cond_8
    sget-object v1, Lcom/leanplum/FileManager$DownloadFileResult;->EXISTS_IN_ASSETS:Lcom/leanplum/FileManager$DownloadFileResult;

    if-ne v0, v1, :cond_6

    .line 264
    iput-boolean v4, p0, Lcom/leanplum/Var;->q:Z

    goto :goto_2
.end method

.method public addFileReadyHandler(Lcom/leanplum/callbacks/VariableCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/leanplum/callbacks/VariableCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 317
    if-nez p1, :cond_1

    .line 318
    const-string/jumbo v0, "Leanplum [Var]"

    const-string/jumbo v1, "addFileReadyHandler - Invalid handler parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v1, p0, Lcom/leanplum/Var;->i:Ljava/util/List;

    monitor-enter v1

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/Var;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-static {}, Lcom/leanplum/Leanplum;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/leanplum/Var;->k:Z

    if-nez v0, :cond_0

    .line 325
    invoke-virtual {p1, p0}, Lcom/leanplum/callbacks/VariableCallback;->handle(Lcom/leanplum/Var;)V

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addValueChangedHandler(Lcom/leanplum/callbacks/VariableCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/leanplum/callbacks/VariableCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 287
    if-nez p1, :cond_1

    .line 288
    const-string/jumbo v0, "Leanplum [Var]"

    const-string/jumbo v1, "addValueChangedHandler - Invalid handler parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/leanplum/Var;->j:Ljava/util/List;

    monitor-enter v1

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/Var;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-static {}, Lcom/leanplum/Leanplum;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p1, p0}, Lcom/leanplum/callbacks/VariableCallback;->handle(Lcom/leanplum/Var;)V

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public count()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 371
    :try_start_0
    invoke-direct {p0}, Lcom/leanplum/Var;->b()V

    .line 372
    iget-object v0, p0, Lcom/leanplum/Var;->d:[Ljava/lang/String;

    invoke-static {v0}, Lcom/leanplum/cg;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 373
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 374
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 381
    :goto_0
    return v0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    move v0, v1

    .line 378
    goto :goto_0

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "This variable is not a list."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/leanplum/Leanplum;->a(Ljava/lang/RuntimeException;)V

    move v0, v1

    .line 381
    goto :goto_0
.end method

.method public defaultStream()Ljava/io/InputStream;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/Var;->h:Ljava/lang/String;

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v6

    .line 421
    :goto_0
    return-object v0

    .line 417
    :cond_0
    iget-boolean v0, p0, Lcom/leanplum/Var;->b:Z

    iget-boolean v1, p0, Lcom/leanplum/Var;->m:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/leanplum/Var;->q:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/leanplum/Var;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/leanplum/Var;->f:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/leanplum/Var;->p:[B

    invoke-static/range {v0 .. v5}, Lcom/leanplum/g;->a(ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;[B)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 421
    goto :goto_0
.end method

.method public defaultValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/leanplum/Var;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public fileValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 341
    :try_start_0
    invoke-direct {p0}, Lcom/leanplum/Var;->b()V

    .line 342
    iget-object v0, p0, Lcom/leanplum/Var;->h:Ljava/lang/String;

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v1, p0, Lcom/leanplum/Var;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/leanplum/Var;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-boolean v2, p0, Lcom/leanplum/Var;->q:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/leanplum/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 348
    :goto_0
    return-object v0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    .line 348
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/leanplum/Var;->h:Ljava/lang/String;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/leanplum/Var;->c:Ljava/lang/String;

    return-object v0
.end method

.method public nameComponents()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/leanplum/Var;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public numberValue()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/leanplum/Var;->b()V

    .line 386
    iget-object v0, p0, Lcom/leanplum/Var;->e:Ljava/lang/Double;

    return-object v0
.end method

.method public varargs objectForKeyPath([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 352
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 353
    :cond_0
    const-string/jumbo v1, "Leanplum [Var]"

    const-string/jumbo v2, "objectForKeyPath - Invalid keys parameter provided (null or empty)."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :goto_0
    return-object v0

    .line 357
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/leanplum/Var;->b()V

    .line 358
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 359
    iget-object v2, p0, Lcom/leanplum/Var;->d:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 360
    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 361
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/leanplum/cg;->a([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v1

    .line 364
    invoke-static {v1}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public overrideResId()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/leanplum/Var;->s:I

    return v0
.end method

.method public removeFileReadyHandler(Lcom/leanplum/callbacks/VariableCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/leanplum/callbacks/VariableCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 330
    if-nez p1, :cond_0

    .line 331
    const-string/jumbo v0, "Leanplum [Var]"

    const-string/jumbo v1, "removeFileReadyHandler - Invalid handler parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/leanplum/Var;->i:Ljava/util/List;

    monitor-enter v1

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/Var;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 336
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeValueChangedHandler(Lcom/leanplum/callbacks/VariableCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/leanplum/callbacks/VariableCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v1, p0, Lcom/leanplum/Var;->j:Ljava/util/List;

    monitor-enter v1

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/Var;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 303
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOverrideResId(I)V
    .locals 0

    .prologue
    .line 182
    iput p1, p0, Lcom/leanplum/Var;->s:I

    .line 183
    return-void
.end method

.method public stream()Ljava/io/InputStream;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/Var;->h:Ljava/lang/String;

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v6

    .line 408
    :cond_0
    :goto_0
    return-object v0

    .line 399
    :cond_1
    invoke-direct {p0}, Lcom/leanplum/Var;->b()V

    .line 400
    iget-boolean v0, p0, Lcom/leanplum/Var;->b:Z

    iget-boolean v1, p0, Lcom/leanplum/Var;->m:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/leanplum/Var;->q:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/leanplum/Var;->fileValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/leanplum/Var;->f:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/leanplum/Var;->p:[B

    invoke-static/range {v0 .. v5}, Lcom/leanplum/g;->a(ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;[B)Ljava/io/InputStream;

    move-result-object v0

    .line 402
    if-nez v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/leanplum/Var;->defaultStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 408
    goto :goto_0
.end method

.method public stringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/leanplum/Var;->b()V

    .line 391
    iget-object v0, p0, Lcom/leanplum/Var;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Var("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/leanplum/Var;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/leanplum/Var;->b()V

    .line 174
    iget-object v0, p0, Lcom/leanplum/Var;->g:Ljava/lang/Object;

    return-object v0
.end method
