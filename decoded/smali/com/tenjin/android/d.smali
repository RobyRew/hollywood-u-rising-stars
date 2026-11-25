.class Lcom/tenjin/android/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/tenjin/android/b;


# direct methods
.method constructor <init>(Lcom/tenjin/android/b;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/tenjin/android/d;->c:Lcom/tenjin/android/b;

    iput-object p2, p0, Lcom/tenjin/android/d;->a:Ljava/lang/String;

    iput p3, p0, Lcom/tenjin/android/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 281
    iget-object v0, p0, Lcom/tenjin/android/d;->c:Lcom/tenjin/android/b;

    invoke-static {v0}, Lcom/tenjin/android/b;->c(Lcom/tenjin/android/b;)Ljava/util/Map;

    move-result-object v0

    .line 283
    :try_start_0
    const-string/jumbo v1, "event"

    iget-object v2, p0, Lcom/tenjin/android/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string/jumbo v1, "value"

    iget v2, p0, Lcom/tenjin/android/d;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string/jumbo v1, "Authorization"

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Basic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tenjin/android/d;->c:Lcom/tenjin/android/b;

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

    .line 287
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 288
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    new-instance v1, Lcom/tenjin/android/a;

    invoke-direct {v1}, Lcom/tenjin/android/a;-><init>()V

    iget-object v2, p0, Lcom/tenjin/android/d;->c:Lcom/tenjin/android/b;

    invoke-static {v2}, Lcom/tenjin/android/b;->d(Lcom/tenjin/android/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Lcom/tenjin/android/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    goto :goto_0
.end method
