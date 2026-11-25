.class Lcom/applovin/a/b/ch;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/a/b/da;


# instance fields
.field final synthetic a:Lcom/applovin/a/b/cf;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/cf;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/ch;->a:Lcom/applovin/a/b/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    iget-object v0, p0, Lcom/applovin/a/b/ch;->a:Lcom/applovin/a/b/cf;

    iget-object v0, v0, Lcom/applovin/a/b/cf;->g:Lcom/applovin/c/l;

    const-string/jumbo v1, "TaskReportReward"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to report reward for ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/a/b/ch;->a:Lcom/applovin/a/b/cf;

    invoke-static {v3}, Lcom/applovin/a/b/cf;->a(Lcom/applovin/a/b/cf;)Lcom/applovin/a/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/a/b/a;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 6

    iget-object v0, p0, Lcom/applovin/a/b/ch;->a:Lcom/applovin/a/b/cf;

    iget-object v0, v0, Lcom/applovin/a/b/cf;->g:Lcom/applovin/c/l;

    const-string/jumbo v1, "TaskReportReward"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Reported reward successfully for ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/a/b/ch;->a:Lcom/applovin/a/b/cf;

    invoke-static {v3}, Lcom/applovin/a/b/cf;->a(Lcom/applovin/a/b/cf;)Lcom/applovin/a/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/a/b/a;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
