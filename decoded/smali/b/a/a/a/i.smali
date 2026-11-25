.class public Lb/a/a/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:[Lb/a/a/a/q;

.field private c:Lb/a/a/a/a/c/w;

.field private d:Landroid/os/Handler;

.field private e:Lb/a/a/a/t;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lb/a/a/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/a/a/l",
            "<",
            "Lb/a/a/a/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iput-object p1, p0, Lb/a/a/a/i;->a:Landroid/content/Context;

    .line 96
    return-void
.end method


# virtual methods
.method public a()Lb/a/a/a/f;
    .locals 9

    .prologue
    .line 227
    iget-object v0, p0, Lb/a/a/a/i;->c:Lb/a/a/a/a/c/w;

    if-nez v0, :cond_0

    .line 228
    invoke-static {}, Lb/a/a/a/a/c/w;->a()Lb/a/a/a/a/c/w;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i;->c:Lb/a/a/a/a/c/w;

    .line 231
    :cond_0
    iget-object v0, p0, Lb/a/a/a/i;->d:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 232
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lb/a/a/a/i;->d:Landroid/os/Handler;

    .line 235
    :cond_1
    iget-object v0, p0, Lb/a/a/a/i;->e:Lb/a/a/a/t;

    if-nez v0, :cond_2

    .line 236
    iget-boolean v0, p0, Lb/a/a/a/i;->f:Z

    if-eqz v0, :cond_5

    .line 237
    new-instance v0, Lb/a/a/a/e;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lb/a/a/a/e;-><init>(I)V

    iput-object v0, p0, Lb/a/a/a/i;->e:Lb/a/a/a/t;

    .line 244
    :cond_2
    :goto_0
    iget-object v0, p0, Lb/a/a/a/i;->h:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 245
    iget-object v0, p0, Lb/a/a/a/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i;->h:Ljava/lang/String;

    .line 248
    :cond_3
    iget-object v0, p0, Lb/a/a/a/i;->i:Lb/a/a/a/l;

    if-nez v0, :cond_4

    .line 249
    sget-object v0, Lb/a/a/a/l;->d:Lb/a/a/a/l;

    iput-object v0, p0, Lb/a/a/a/i;->i:Lb/a/a/a/l;

    .line 253
    :cond_4
    iget-object v0, p0, Lb/a/a/a/i;->b:[Lb/a/a/a/q;

    if-nez v0, :cond_6

    .line 254
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 259
    :goto_1
    new-instance v8, Lb/a/a/a/a/b/z;

    iget-object v0, p0, Lb/a/a/a/i;->a:Landroid/content/Context;

    iget-object v1, p0, Lb/a/a/a/i;->h:Ljava/lang/String;

    iget-object v3, p0, Lb/a/a/a/i;->g:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v8, v0, v1, v3, v4}, Lb/a/a/a/a/b/z;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 262
    new-instance v0, Lb/a/a/a/f;

    iget-object v1, p0, Lb/a/a/a/i;->a:Landroid/content/Context;

    iget-object v3, p0, Lb/a/a/a/i;->c:Lb/a/a/a/a/c/w;

    iget-object v4, p0, Lb/a/a/a/i;->d:Landroid/os/Handler;

    iget-object v5, p0, Lb/a/a/a/i;->e:Lb/a/a/a/t;

    iget-boolean v6, p0, Lb/a/a/a/i;->f:Z

    iget-object v7, p0, Lb/a/a/a/i;->i:Lb/a/a/a/l;

    invoke-direct/range {v0 .. v8}, Lb/a/a/a/f;-><init>(Landroid/content/Context;Ljava/util/Map;Lb/a/a/a/a/c/w;Landroid/os/Handler;Lb/a/a/a/t;ZLb/a/a/a/l;Lb/a/a/a/a/b/z;)V

    return-object v0

    .line 239
    :cond_5
    new-instance v0, Lb/a/a/a/e;

    invoke-direct {v0}, Lb/a/a/a/e;-><init>()V

    iput-object v0, p0, Lb/a/a/a/i;->e:Lb/a/a/a/t;

    goto :goto_0

    .line 256
    :cond_6
    iget-object v0, p0, Lb/a/a/a/i;->b:[Lb/a/a/a/q;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/a/f;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    goto :goto_1
.end method

.method public varargs a([Lb/a/a/a/q;)Lb/a/a/a/i;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lb/a/a/a/i;->b:[Lb/a/a/a/q;

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Kits already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iput-object p1, p0, Lb/a/a/a/i;->b:[Lb/a/a/a/q;

    .line 107
    return-object p0
.end method
