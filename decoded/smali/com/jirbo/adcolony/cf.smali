.class Lcom/jirbo/adcolony/cf;
.super Lcom/jirbo/adcolony/cv;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/cb;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/cb;Lcom/jirbo/adcolony/cb;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/jirbo/adcolony/cf;->a:Lcom/jirbo/adcolony/cb;

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/cv;-><init>(Lcom/jirbo/adcolony/cb;)V

    return-void
.end method


# virtual methods
.method b()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/jirbo/adcolony/cf;->n:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->e:Lcom/jirbo/adcolony/er;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/er;->e()V

    .line 116
    return-void
.end method
