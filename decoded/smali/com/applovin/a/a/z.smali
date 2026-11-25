.class Lcom/applovin/a/a/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/a/a/a;


# direct methods
.method private constructor <init>(Lcom/applovin/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/z;->a:Lcom/applovin/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/a/a/a;Lcom/applovin/a/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/a/a/z;-><init>(Lcom/applovin/a/a/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/applovin/a/a/z;->a:Lcom/applovin/a/a/a;

    invoke-static {v0}, Lcom/applovin/a/a/a;->c(Lcom/applovin/a/a/a;)Lcom/applovin/a/a/ae;

    move-result-object v0

    const-string/jumbo v1, "/"

    const-string/jumbo v2, "<html></html>"

    const-string/jumbo v3, "text/html"

    const/4 v4, 0x0

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/a/a/ae;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
