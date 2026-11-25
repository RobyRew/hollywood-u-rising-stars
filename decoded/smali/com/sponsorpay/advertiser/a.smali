.class public abstract Lcom/sponsorpay/advertiser/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/sponsorpay/advertiser/c;

.field private b:Lcom/sponsorpay/a/a;

.field private c:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Lcom/sponsorpay/a/a;Lcom/sponsorpay/advertiser/c;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/sponsorpay/advertiser/a;->a:Lcom/sponsorpay/advertiser/c;

    .line 66
    iput-object p1, p0, Lcom/sponsorpay/advertiser/a;->b:Lcom/sponsorpay/a/a;

    .line 67
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "AbstractCallbackSender"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {p0}, Lcom/sponsorpay/advertiser/a;->c()Ljava/util/Map;

    move-result-object v0

    .line 1091
    if-nez v0, :cond_0

    .line 1092
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1095
    :cond_0
    iget-object v1, p0, Lcom/sponsorpay/advertiser/a;->c:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 1096
    iget-object v1, p0, Lcom/sponsorpay/advertiser/a;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1099
    :cond_1
    const-string/jumbo v1, "answer_received"

    invoke-virtual {p0}, Lcom/sponsorpay/advertiser/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    iget-object v1, p0, Lcom/sponsorpay/advertiser/a;->a:Lcom/sponsorpay/advertiser/c;

    invoke-virtual {v1}, Lcom/sponsorpay/advertiser/c;->a()Ljava/lang/String;

    move-result-object v1

    .line 1104
    invoke-static {v1}, Lcom/sponsorpay/c/n;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1105
    const-string/jumbo v3, "subid"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    :cond_2
    invoke-virtual {p0}, Lcom/sponsorpay/advertiser/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sponsorpay/advertiser/a;->b:Lcom/sponsorpay/a/a;

    invoke-static {v1, v3}, Lcom/sponsorpay/c/o;->a(Ljava/lang/String;Lcom/sponsorpay/a/a;)Lcom/sponsorpay/c/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sponsorpay/c/o;->b(Ljava/util/Map;)Lcom/sponsorpay/c/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/c/o;->a()Lcom/sponsorpay/c/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/c/o;->d()Ljava/lang/String;

    move-result-object v0

    .line 1111
    const-string/jumbo v1, "AbstractCallbackSender"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Callback will be sent to: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :try_start_0
    invoke-static {v0}, Lcom/sponsorpay/c/t;->b(Ljava/lang/String;)Lcom/sponsorpay/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/c/t;->a()Lcom/sponsorpay/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/c/a;->b()I

    move-result v1

    .line 141
    const/16 v0, 0xc8

    if-ne v1, v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 142
    const-string/jumbo v3, "AbstractCallbackSender"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Server returned status code: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_1
    return-object v0

    :cond_3
    move v0, v2

    .line 141
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 145
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 146
    const-string/jumbo v2, "AbstractCallbackSender"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "An exception occurred when trying to send advertiser callback: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sponsorpay/c/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sponsorpay/advertiser/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/sponsorpay/advertiser/a;->b(Ljava/lang/Boolean;)V

    .line 164
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sponsorpay/advertiser/a;->c:Ljava/util/Map;

    .line 74
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected abstract b(Ljava/lang/Boolean;)V
.end method

.method protected abstract c()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/advertiser/a;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/advertiser/a;->a(Ljava/lang/Boolean;)V

    return-void
.end method
