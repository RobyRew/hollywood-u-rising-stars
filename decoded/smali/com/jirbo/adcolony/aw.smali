.class Lcom/jirbo/adcolony/aw;
.super Lcom/jirbo/adcolony/cv;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/au;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/au;Lcom/jirbo/adcolony/cb;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/jirbo/adcolony/aw;->a:Lcom/jirbo/adcolony/au;

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/cv;-><init>(Lcom/jirbo/adcolony/cb;)V

    return-void
.end method


# virtual methods
.method b()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/jirbo/adcolony/aw;->n:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->d:Lcom/jirbo/adcolony/ep;

    iget-object v1, p0, Lcom/jirbo/adcolony/aw;->a:Lcom/jirbo/adcolony/au;

    iget-object v1, v1, Lcom/jirbo/adcolony/au;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/aw;->a:Lcom/jirbo/adcolony/au;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ep;->a(Ljava/lang/String;Lcom/jirbo/adcolony/y;)V

    .line 157
    return-void
.end method
