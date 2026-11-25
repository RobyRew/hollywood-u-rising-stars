.class final Lcom/leanplum/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/json/JSONObject;

.field private synthetic b:Lcom/leanplum/bs;


# direct methods
.method constructor <init>(Lcom/leanplum/bs;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/leanplum/bt;->b:Lcom/leanplum/bs;

    iput-object p2, p0, Lcom/leanplum/bt;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/bt;->a:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/leanplum/y;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/leanplum/y;->c(Lorg/json/JSONObject;)Z

    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    iget-object v0, p0, Lcom/leanplum/bt;->b:Lcom/leanplum/bs;

    iget-object v0, v0, Lcom/leanplum/bs;->a:Lcom/leanplum/callbacks/StartCallback;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/leanplum/bt;->b:Lcom/leanplum/bs;

    iget-object v0, v0, Lcom/leanplum/bs;->a:Lcom/leanplum/callbacks/StartCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/leanplum/callbacks/StartCallback;->onResponse(Z)V

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    const-string/jumbo v1, "Leanplum"

    invoke-static {v0}, Lcom/leanplum/y;->d(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/leanplum/bt;->b:Lcom/leanplum/bs;

    iget-object v0, v0, Lcom/leanplum/bs;->a:Lcom/leanplum/callbacks/StartCallback;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/leanplum/bt;->b:Lcom/leanplum/bs;

    iget-object v0, v0, Lcom/leanplum/bs;->a:Lcom/leanplum/callbacks/StartCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/leanplum/callbacks/StartCallback;->onResponse(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
