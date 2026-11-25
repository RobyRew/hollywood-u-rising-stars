.class Lcom/tenjin/android/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:D

.field final synthetic e:Lcom/tenjin/android/b;


# direct methods
.method constructor <init>(Lcom/tenjin/android/b;Ljava/lang/String;Ljava/lang/String;ID)V
    .locals 1

    .prologue
    .line 361
    iput-object p1, p0, Lcom/tenjin/android/f;->e:Lcom/tenjin/android/b;

    iput-object p2, p0, Lcom/tenjin/android/f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tenjin/android/f;->b:Ljava/lang/String;

    iput p4, p0, Lcom/tenjin/android/f;->c:I

    iput-wide p5, p0, Lcom/tenjin/android/f;->d:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 364
    iget-object v0, p0, Lcom/tenjin/android/f;->e:Lcom/tenjin/android/b;

    invoke-static {v0}, Lcom/tenjin/android/b;->c(Lcom/tenjin/android/b;)Ljava/util/Map;

    move-result-object v0

    .line 367
    :try_start_0
    const-string/jumbo v1, "currency"

    iget-object v2, p0, Lcom/tenjin/android/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string/jumbo v1, "product_id"

    iget-object v2, p0, Lcom/tenjin/android/f;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string/jumbo v1, "quantity"

    iget v2, p0, Lcom/tenjin/android/f;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string/jumbo v1, "price"

    iget-wide v2, p0, Lcom/tenjin/android/f;->d:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string/jumbo v1, "Authorization"

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Basic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tenjin/android/f;->e:Lcom/tenjin/android/b;

    invoke-static {v3}, Lcom/tenjin/android/b;->b(Lcom/tenjin/android/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 373
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 374
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    new-instance v1, Lcom/tenjin/android/a;

    invoke-direct {v1}, Lcom/tenjin/android/a;-><init>()V

    iget-object v2, p0, Lcom/tenjin/android/f;->e:Lcom/tenjin/android/b;

    invoke-static {v2}, Lcom/tenjin/android/b;->e(Lcom/tenjin/android/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Lcom/tenjin/android/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    goto :goto_0
.end method
