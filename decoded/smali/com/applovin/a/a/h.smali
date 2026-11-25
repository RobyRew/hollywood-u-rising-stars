.class Lcom/applovin/a/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/applovin/a/a/ak;

.field final synthetic b:Lcom/applovin/a/a/an;


# direct methods
.method constructor <init>(Lcom/applovin/a/a/an;Lcom/applovin/a/a/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/h;->b:Lcom/applovin/a/a/an;

    iput-object p2, p0, Lcom/applovin/a/a/h;->a:Lcom/applovin/a/a/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/h;->a:Lcom/applovin/a/a/ak;

    invoke-virtual {v0}, Lcom/applovin/a/a/ak;->performClick()Z

    return-void
.end method
