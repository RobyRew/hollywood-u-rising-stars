.class Lcom/applovin/a/a/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/applovin/a/a/ae;


# direct methods
.method constructor <init>(Lcom/applovin/a/a/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/ag;->a:Lcom/applovin/a/a/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    const-string/jumbo v0, "AdWebView"

    const-string/jumbo v1, "Received a LongClick event."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method
