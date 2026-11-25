.class Lcom/jirbo/adcolony/cj;
.super Lcom/jirbo/adcolony/cv;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jirbo/adcolony/y;

.field final synthetic d:Lcom/jirbo/adcolony/cb;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/cb;Lcom/jirbo/adcolony/cb;Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/y;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/jirbo/adcolony/cj;->d:Lcom/jirbo/adcolony/cb;

    iput-object p3, p0, Lcom/jirbo/adcolony/cj;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/jirbo/adcolony/cj;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/jirbo/adcolony/cj;->c:Lcom/jirbo/adcolony/y;

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/cv;-><init>(Lcom/jirbo/adcolony/cb;)V

    return-void
.end method


# virtual methods
.method b()V
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/jirbo/adcolony/cj;->n:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->d:Lcom/jirbo/adcolony/ep;

    iget-object v1, p0, Lcom/jirbo/adcolony/cj;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/cj;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/jirbo/adcolony/cw;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/h;

    move-result-object v2

    iget-object v3, p0, Lcom/jirbo/adcolony/cj;->c:Lcom/jirbo/adcolony/y;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/ep;->a(Ljava/lang/String;Lcom/jirbo/adcolony/h;Lcom/jirbo/adcolony/y;)V

    .line 229
    return-void
.end method
