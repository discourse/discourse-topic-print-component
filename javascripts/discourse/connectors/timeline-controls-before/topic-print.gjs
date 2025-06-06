import Component from "@ember/component";
import { tagName } from "@ember-decorators/component";
import PrintTopicButton from "../../components/print-topic-button";

@tagName("")
export default class TopicPrint extends Component {
  <template>
    <PrintTopicButton
      @currentUser={{this.currentUser}}
      @fullScreen={{@outletArgs.topicProgressExpanded}}
    />
  </template>
}
