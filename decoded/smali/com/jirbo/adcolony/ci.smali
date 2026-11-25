.class Lcom/jirbo/adcolony/ci;
.super Lcom/jirbo/adcolony/cv;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/jirbo/adcolony/y;

.field final synthetic d:Lcom/jirbo/adcolony/cb;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/cb;Lcom/jirbo/adcolony/cb;Ljava/lang/String;ILcom/jirbo/adcolony/y;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/jirbo/adcolony/ci;->d:Lcom/jirbo/adcolony/cb;

    iput-object p3, p0, Lcom/jirbo/adcolony/ci;->a:Ljava/lang/String;

    iput p4, p0, Lcom/jirbo/adcolony/ci;->b:I

    iput-object p5, p0, Lcom/jirbo/adcolony/ci;->c:Lcom/jirbo/adcolony/y;

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/cv;-><init>(Lcom/jirbo/adcolony/cb;)V

    return-void
.end method


# virtual methods
.method b()V
    .locals 4

    .prologue
    .line 200
    new-instance v0, Lcom/jirbo/adcolony/h;

    invoke-direct {v0}, Lcom/jirbo/adcolony/h;-><init>()V

    .line 201
    const-string/jumbo v1, "v4vc_name"

    iget-object v2, p0, Lcom/jirbo/adcolony/ci;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string/jumbo v1, "v4vc_amount"

    iget v2, p0, Lcom/jirbo/adcolony/ci;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;I)V

    .line 203
    iget-object v1, p0, Lcom/jirbo/adcolony/ci;->n:Lcom/jirbo/adcolony/cb;

    iget-object v1, v1, Lcom/jirbo/adcolony/cb;->d:Lcom/jirbo/adcolony/ep;

    const-string/jumbo v2, "reward_v4vc"

    iget-object v3, p0, Lcom/jirbo/adcolony/ci;->c:Lcom/jirbo/adcolony/y;

    invoke-virtual {v1, v2, v0, v3}, Lcom/jirbo/adcolony/ep;->a(Ljava/lang/String;Lcom/jirbo/adcolony/h;Lcom/jirbo/adcolony/y;)V

    .line 204
    return-void
.end method
