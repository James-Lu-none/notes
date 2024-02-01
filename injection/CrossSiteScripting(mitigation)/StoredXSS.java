import org.owasp.validator.html.*;
import MyCommentDAO;

public class AntiSamyController {
    public void saveNewComment(int threadID, int userID, String newComment) {
        Policy policy = Policy.getInstance("antisamy-slashdot.xml");
        AntiSamy as = new AntiSamy();
        CleanResults newComment_cr = as.scan(newComment, policy);

        MyCommentDAO.addComment(threadID, userID, newComment_cr.getCleanHTML());
    }
}