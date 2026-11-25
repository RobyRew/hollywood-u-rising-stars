.class final Lcom/leanplum/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/json/JSONObject;

.field private synthetic b:Lcom/leanplum/au;


# direct methods
.method constructor <init>(Lcom/leanplum/au;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/leanplum/av;->b:Lcom/leanplum/au;

    iput-object p2, p0, Lcom/leanplum/av;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 107
    iget-object v0, p0, Lcom/leanplum/av;->b:Lcom/leanplum/au;

    iget-object v0, v0, Lcom/leanplum/au;->e:Lcom/leanplum/ci;

    const-string/jumbo v1, "5:::%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/leanplum/av;->a:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leanplum/ci;->a(Ljava/lang/String;)V

    .line 108
    return-void
.end method
