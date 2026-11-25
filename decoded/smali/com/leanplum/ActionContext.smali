.class public Lcom/leanplum/ActionContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/leanplum/ActionContext;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/util/Map;
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

.field private d:Lcom/leanplum/ActionContext;

.field private final e:I

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/leanplum/cp;

.field private k:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/leanplum/ActionContext;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v1, p0, Lcom/leanplum/ActionContext;->g:Z

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leanplum/ActionContext;->h:Z

    .line 29
    iput-boolean v1, p0, Lcom/leanplum/ActionContext;->i:Z

    .line 55
    iput-object p1, p0, Lcom/leanplum/ActionContext;->a:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/leanplum/ActionContext;->c:Ljava/util/Map;

    .line 57
    iput-object p3, p0, Lcom/leanplum/ActionContext;->b:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/leanplum/cg;->f()I

    move-result v0

    iput v0, p0, Lcom/leanplum/ActionContext;->e:I

    .line 59
    iput p4, p0, Lcom/leanplum/ActionContext;->k:I

    .line 60
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Lcom/leanplum/cg;->l()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 78
    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    :cond_0
    return-object v0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 113
    .line 2085
    iget-object v0, p0, Lcom/leanplum/ActionContext;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/leanplum/ActionContext;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1099
    const-string/jumbo v1, "kinds"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1100
    if-nez v0, :cond_2

    .line 1101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v5, v0

    .line 114
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 116
    if-eqz p3, :cond_3

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 117
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 118
    if-eqz v1, :cond_1

    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_1
    instance-of v2, v3, Ljava/util/Map;

    if-eqz v2, :cond_5

    move-object v2, v3

    check-cast v2, Ljava/util/Map;

    const-string/jumbo v8, "__name__"

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 120
    instance-of v1, v4, Ljava/util/Map;

    if-eqz v1, :cond_4

    move-object v1, v4

    check-cast v1, Ljava/util/Map;

    .line 122
    :goto_3
    check-cast v3, Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v1}, Lcom/leanplum/ActionContext;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    move-object v5, v0

    .line 1103
    goto :goto_0

    :cond_3
    move-object v4, v6

    .line 116
    goto :goto_2

    :cond_4
    move-object v1, v6

    .line 120
    goto :goto_3

    .line 124
    :cond_5
    if-eqz v1, :cond_7

    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 125
    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v1, v2, v0, v6}, Lcom/leanplum/g;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/leanplum/FileManager$DownloadFileResult;

    goto/16 :goto_1

    :cond_6
    move-object v0, v6

    goto :goto_4

    .line 130
    :cond_7
    if-eqz v1, :cond_8

    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leanplum/ActionContext;->objectNamed(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 135
    check-cast v0, Ljava/util/Map;

    .line 136
    new-instance v2, Lcom/leanplum/ActionContext;

    const-string/jumbo v1, "__name__"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/leanplum/ActionContext;->b:Ljava/lang/String;

    invoke-direct {v2, v1, v0, v3}, Lcom/leanplum/ActionContext;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v2}, Lcom/leanplum/ActionContext;->b()V

    goto/16 :goto_1

    .line 143
    :cond_9
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/leanplum/ActionContext;->objectNamed(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 296
    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 297
    const/4 v0, 0x0

    .line 303
    :goto_0
    return-object v0

    .line 299
    :cond_0
    check-cast v0, Ljava/util/Map;

    .line 300
    const-string/jumbo v1, "__name__"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/leanplum/ActionContext;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "values"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 302
    invoke-static {v1, v0}, Lcom/leanplum/cg;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method private g()Ljava/util/Map;
    .locals 2
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
    .line 90
    .line 1085
    iget-object v0, p0, Lcom/leanplum/ActionContext;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/leanplum/ActionContext;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 90
    const-string/jumbo v1, "values"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 91
    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    :cond_0
    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leanplum/ActionContext;->g:Z

    .line 64
    return-void
.end method

.method final a(Lcom/leanplum/cp;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/leanplum/ActionContext;->j:Lcom/leanplum/cp;

    .line 72
    return-void
.end method

.method final a(Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/leanplum/ActionContext;->h:Z

    .line 68
    return-void
.end method

.method public actionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/leanplum/ActionContext;->a:Ljava/lang/String;

    return-object v0
.end method

.method final b()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/leanplum/ActionContext;->c:Ljava/util/Map;

    const-string/jumbo v1, ""

    invoke-direct {p0}, Lcom/leanplum/ActionContext;->g()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/leanplum/ActionContext;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 108
    return-void
.end method

.method final b(Z)V
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leanplum/ActionContext;->i:Z

    .line 416
    return-void
.end method

.method public booleanNamed(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const-string/jumbo v0, "Leanplum [ActionCtx]"

    const-string/jumbo v2, "booleanNamed - Invalid name parameter provided."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 272
    :goto_0
    return v0

    .line 264
    :cond_0
    invoke-virtual {p0, p1}, Lcom/leanplum/ActionContext;->objectNamed(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 266
    :try_start_0
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 267
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    move v0, v1

    .line 272
    goto :goto_0
.end method

.method final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/leanplum/ActionContext;->b:Ljava/lang/String;

    return-object v0
.end method

.method public compareTo(Lcom/leanplum/ActionContext;)I
    .locals 2

    .prologue
    .line 399
    .line 2407
    iget v0, p0, Lcom/leanplum/ActionContext;->k:I

    .line 3407
    iget v1, p1, Lcom/leanplum/ActionContext;->k:I

    .line 399
    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/leanplum/ActionContext;

    invoke-virtual {p0, p1}, Lcom/leanplum/ActionContext;->compareTo(Lcom/leanplum/ActionContext;)I

    move-result v0

    return v0
.end method

.method final d()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lcom/leanplum/ActionContext;->k:I

    return v0
.end method

.method final e()Ljava/util/Map;
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
    .line 411
    iget-object v0, p0, Lcom/leanplum/ActionContext;->c:Ljava/util/Map;

    return-object v0
.end method

.method final f()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/leanplum/ActionContext;->i:Z

    return v0
.end method

.method public muteFutureMessagesOfSameKind()V
    .locals 1

    .prologue
    .line 392
    :try_start_0
    invoke-static {}, Lcom/leanplum/cq;->a()Lcom/leanplum/cq;

    iget-object v0, p0, Lcom/leanplum/ActionContext;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/leanplum/cq;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public numberNamed(Ljava/lang/String;)Ljava/lang/Number;
    .locals 2

    .prologue
    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    const-string/jumbo v0, "Leanplum [ActionCtx]"

    const-string/jumbo v1, "numberNamed - Invalid name parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x0

    .line 289
    :goto_0
    return-object v0

    .line 281
    :cond_0
    invoke-virtual {p0, p1}, Lcom/leanplum/ActionContext;->objectNamed(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 283
    :try_start_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 284
    check-cast v0, Ljava/lang/Number;

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    .line 289
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public objectNamed(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string/jumbo v0, "Leanplum [ActionCtx]"

    const-string/jumbo v2, "objectNamed - Invalid name parameter provided."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 175
    :goto_0
    return-object v0

    .line 156
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/leanplum/ActionContext;->g:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/leanplum/cg;->f()I

    move-result v0

    iget v2, p0, Lcom/leanplum/ActionContext;->e:I

    if-le v0, v2, :cond_1

    .line 157
    iget-object v0, p0, Lcom/leanplum/ActionContext;->d:Lcom/leanplum/ActionContext;

    .line 158
    if-eqz v0, :cond_2

    .line 159
    iget-object v2, p0, Lcom/leanplum/ActionContext;->f:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/leanplum/ActionContext;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/leanplum/ActionContext;->c:Ljava/util/Map;

    .line 171
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/leanplum/cg;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/leanplum/ActionContext;->c:Ljava/util/Map;

    invoke-static {v0, v2}, Lcom/leanplum/cg;->a([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/leanplum/ActionContext;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 165
    invoke-static {}, Lcom/leanplum/cg;->m()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/leanplum/ActionContext;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 166
    if-eqz v0, :cond_1

    .line 167
    const-string/jumbo v2, "vars"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/leanplum/ActionContext;->c:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 175
    goto :goto_0
.end method

.method public runActionNamed(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 307
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    const-string/jumbo v0, "Leanplum [ActionCtx]"

    const-string/jumbo v1, "runActionNamed - Invalid name parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    invoke-direct {p0, p1}, Lcom/leanplum/ActionContext;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_0

    .line 316
    :try_start_0
    new-instance v1, Lcom/leanplum/ActionContext;

    const-string/jumbo v2, "__name__"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/leanplum/ActionContext;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/leanplum/ActionContext;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/leanplum/ActionContext;->j:Lcom/leanplum/cp;

    iput-object v0, v1, Lcom/leanplum/ActionContext;->j:Lcom/leanplum/cp;

    .line 320
    iget-boolean v0, p0, Lcom/leanplum/ActionContext;->g:Z

    iput-boolean v0, v1, Lcom/leanplum/ActionContext;->g:Z

    .line 321
    iget-boolean v0, p0, Lcom/leanplum/ActionContext;->h:Z

    iput-boolean v0, v1, Lcom/leanplum/ActionContext;->h:Z

    .line 322
    iput-object p0, v1, Lcom/leanplum/ActionContext;->d:Lcom/leanplum/ActionContext;

    .line 323
    iput-object p1, v1, Lcom/leanplum/ActionContext;->f:Ljava/lang/String;

    .line 324
    invoke-static {v1}, Lcom/leanplum/Leanplum;->a(Lcom/leanplum/ActionContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public runTrackedActionNamed(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 332
    :try_start_0
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/leanplum/ActionContext;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/leanplum/ActionContext;->h:Z

    if-eqz v0, :cond_3

    .line 333
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const-string/jumbo v0, "Leanplum [ActionCtx]"

    const-string/jumbo v1, "runTrackedActionNamed - Invalid name parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_0
    return-void

    .line 338
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    .line 339
    :goto_1
    iget-object v1, v0, Lcom/leanplum/ActionContext;->d:Lcom/leanplum/ActionContext;

    if-eqz v1, :cond_1

    .line 340
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, v0, Lcom/leanplum/ActionContext;->d:Lcom/leanplum/ActionContext;

    goto :goto_1

    .line 343
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    const/4 v1, 0x1

    .line 345
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    const/4 v0, -0x1

    if-lt v2, v0, :cond_6

    .line 346
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 347
    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    :cond_2
    if-ltz v2, :cond_4

    .line 351
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leanplum/ActionContext;

    iget-object v0, v0, Lcom/leanplum/ActionContext;->f:Ljava/lang/String;

    .line 355
    :goto_3
    if-nez v0, :cond_5

    .line 356
    const/4 v0, 0x0

    .line 362
    :goto_4
    if-eqz v0, :cond_3

    .line 363
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 364
    const-string/jumbo v0, "messageId"

    iget-object v1, p0, Lcom/leanplum/ActionContext;->b:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/leanplum/Leanplum;->a(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 368
    :cond_3
    invoke-virtual {p0, p1}, Lcom/leanplum/ActionContext;->runActionNamed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 353
    goto :goto_3

    .line 359
    :cond_5
    :try_start_1
    const-string/jumbo v5, " action"

    const-string/jumbo v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 345
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_4
.end method

.method public streamNamed(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 237
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    const-string/jumbo v0, "Leanplum [ActionCtx]"

    const-string/jumbo v1, "streamNamed - Invalid name parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 255
    :cond_0
    :goto_0
    return-object v0

    .line 241
    :cond_1
    invoke-virtual {p0, p1}, Lcom/leanplum/ActionContext;->stringNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2220
    const-string/jumbo v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2221
    invoke-direct {p0}, Lcom/leanplum/ActionContext;->g()Ljava/util/Map;

    move-result-object v1

    move v7, v0

    move-object v0, v1

    move v1, v7

    .line 2222
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_6

    .line 2223
    if-eqz v0, :cond_6

    .line 2226
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_5

    .line 2227
    aget-object v1, v2, v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2228
    if-nez v0, :cond_4

    move-object v4, v6

    .line 243
    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    :cond_3
    move-object v0, v6

    .line 245
    goto :goto_0

    .line 2228
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 2230
    :cond_5
    aget-object v4, v2, v1

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2222
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    move-object v4, v6

    .line 2232
    goto :goto_2

    .line 247
    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/leanplum/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/leanplum/g;->a(ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;[B)Ljava/io/InputStream;

    move-result-object v0

    .line 249
    if-nez v0, :cond_0

    .line 250
    const-string/jumbo v1, "Leanplum"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not open stream named "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 255
    goto :goto_0
.end method

.method public stringNamed(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    const-string/jumbo v1, "Leanplum [ActionCtx]"

    const-string/jumbo v2, "stringNamed - Invalid name parameter provided."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    :cond_0
    :goto_0
    return-object v0

    .line 184
    :cond_1
    invoke-virtual {p0, p1}, Lcom/leanplum/ActionContext;->objectNamed(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 185
    if-nez v2, :cond_2

    .line 186
    const-string/jumbo v1, "Leanplum [ActionCtx]"

    const-string/jumbo v2, "stringNamed - Could not create named object."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2198
    iget-object v1, p0, Lcom/leanplum/ActionContext;->j:Lcom/leanplum/cp;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2201
    iget-object v1, p0, Lcom/leanplum/ActionContext;->j:Lcom/leanplum/cp;

    iget-object v1, v1, Lcom/leanplum/cp;->a:Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 2202
    iget-object v1, p0, Lcom/leanplum/ActionContext;->j:Lcom/leanplum/cp;

    iget-object v3, v1, Lcom/leanplum/cp;->a:Ljava/util/Map;

    .line 2203
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2204
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "##Parameter "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "##"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2205
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 2208
    :cond_4
    iget-object v1, p0, Lcom/leanplum/ActionContext;->j:Lcom/leanplum/cp;

    iget-object v1, v1, Lcom/leanplum/cp;->b:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 2209
    const-string/jumbo v1, "##Previous Value##"

    iget-object v3, p0, Lcom/leanplum/ActionContext;->j:Lcom/leanplum/cp;

    iget-object v3, v3, Lcom/leanplum/cp;->b:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2212
    :cond_5
    iget-object v1, p0, Lcom/leanplum/ActionContext;->j:Lcom/leanplum/cp;

    iget-object v1, v1, Lcom/leanplum/cp;->c:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 2213
    const-string/jumbo v1, "##Value##"

    iget-object v3, p0, Lcom/leanplum/ActionContext;->j:Lcom/leanplum/cp;

    iget-object v3, v3, Lcom/leanplum/cp;->c:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    .line 193
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public track(Ljava/lang/String;DLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    :try_start_0
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leanplum/ActionContext;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 377
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    const-string/jumbo v0, "Leanplum [ActionCtx]"

    const-string/jumbo v1, "track - Invalid event parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 382
    const-string/jumbo v0, "messageId"

    iget-object v1, p0, Lcom/leanplum/ActionContext;->b:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lcom/leanplum/Leanplum;->a(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
